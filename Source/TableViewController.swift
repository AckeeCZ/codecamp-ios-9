//
//  TableViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit
import SVProgressHUD
import Argo
import SDWebImage
import Alamofire
import Firebase
import MagicalRecord
import SwiftyJSON

private let cellId = "cellId"

class TableViewController: UIViewController {

    var people: [Person] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func loadView() {
        let view = UIView(); view.backgroundColor = .whiteColor(); view.opaque = true; self.view = view

        let tableView = UITableView(frame: .zero, style: .Plain)
        view.addSubview(tableView)
        self.tableView = tableView
    }

    weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
            tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: cellId)
            tableView.rowHeight = UITableViewAutomaticDimension
            tableView.estimatedRowHeight = 100
            tableView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        try? fetchedResultsController.performFetch()

        let persistJsonToCoreData: (AnyObject) -> () = { [weak self] json in

//            //example of pure CoreData code (without MagicalRecord)
//            //-------------
//            let context = NSManagedObjectContext.MR_defaultContext() //this context is taken from MR core data stack, get appropriate context here if using pure CoreData
//            guard let personDescription = NSEntityDescription.entityForName("Person", inManagedObjectContext: context) else { return }
//            let newPerson = Person(entity: personDescription, insertIntoManagedObjectContext: context)
//            newPerson.name = "getNameFromJson..."
//            try? context.save() //synchronous! You cant even call this from another thread or app will crash/misbehave. To save asynchronously, you would need to create another context for a background thread, then save there, observe save notification and merge changes to your app's main context.
//             //----------------

            // example of MagicalRecord code
            // -----------------------------
//            MagicalRecord.saveWithBlock { localContext in
//                guard let newPerson = Person.MR_createInContext(localContext) else { return }
//                newPerson.name = "getNameFromJson..."
//
//                // thats it.
//                // all the changes made here will be saved to MR_defaultContext and persited to disk when this closure exits
//            }
            // -----------------------------

            // example of MagicalRecord import code
            MagicalRecord.saveWithBlock { localContext in
                guard let personsJson = json as? [[NSObject: AnyObject]] else { return }

                let persons = Person.MR_importFromArray(personsJson, inContext: localContext)
            }
        }

        switch dataSource {
        case .Local:
            if let jsonData = NSBundle.mainBundle().pathForResource("people", ofType: "json")
                .flatMap({ NSData(contentsOfFile: $0) }),
                let json = try? NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments) {
                    persistJsonToCoreData(json)
            }
        case .HTTP(let baseUrl):
            Alamofire.request(.GET, baseUrl + "/people")
                .validate()
                .responseJSON { response in
                    if let e = response.result.error {
                        SVProgressHUD.showErrorWithStatus("\(e)")
                    }
                    guard let json = response.result.value else { return }
                    persistJsonToCoreData(json)
            }
        case .Firebase(let path):
            firebaseHandle = Firebase(url: path).observeEventType(.Value) { (snapshot: FDataSnapshot!) in
                guard let json = snapshot.value else { return }
                persistJsonToCoreData(json)
            }
        }
    }
//    var dataSource: DataSource = .Local
    var dataSource: DataSource = .HTTP("http://private-8310d-petrsima.apiary-mock.com")
//    var dataSource: DataSource = .Firebase("https://simacodecampios.firebaseio.com")
    enum DataSource {
        case Local
        case HTTP(String)
        case Firebase(String)
    }

    var firebaseHandle: UInt? = nil
    deinit {
        if case .Firebase(let path) = dataSource,
            let handle = firebaseHandle {
                Firebase(url: path).removeObserverWithHandle(handle)
        }
    }

    lazy var fetchedResultsController: NSFetchedResultsController = { [unowned self] in
        return Person.MR_fetchAllSortedBy("name", ascending: true, withPredicate: nil, groupBy: nil, delegate: self)
    }()
}

extension TableViewController: NSFetchedResultsControllerDelegate {
    func controllerWillChangeContent(controller: NSFetchedResultsController) {
        tableView.beginUpdates()
    }

    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        tableView.endUpdates()
    }

    func controller(controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?) {
        switch type {
        case .Insert:
            tableView.insertRowsAtIndexPaths([newIndexPath!], withRowAnimation: .Automatic)
        case .Update:
            tableView.reloadRowsAtIndexPaths([indexPath!], withRowAnimation: .Automatic)
        case .Delete:
            tableView.deleteRowsAtIndexPaths([indexPath!], withRowAnimation: .Automatic)
        case .Move:
            tableView.moveRowAtIndexPath(indexPath!, toIndexPath: newIndexPath!)
        }
    }
}

extension TableViewController: UITableViewDataSource {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedResultsController.sections?[safe: section]?.objects?.count ?? 0
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let model = fetchedResultsController.objectAtIndexPath(indexPath) as? Person
        else { return UITableViewCell() }

        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! TableViewCell
        cell.thumbnailImageView.sd_setImageWithURL(model.photo.flatMap { NSURL(string: $0) }) // must set NSAllowsArbitraryLoads
        cell.titleLabel.text = model.name
        cell.subtitleLabel.text = model.addresses.flatMap { $0.text }.reduce("") { $0 + ", " + $1 }
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
}
