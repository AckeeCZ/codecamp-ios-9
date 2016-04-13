//
//  MenuViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 14/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit

private let cellId = "cellId"

class MenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    private enum Item: Int {
        case ScrollView = 0
        case TableView
        case CollectionView

        var name: String {
            switch self {
            case .ScrollView: return "ScrollViewController"
            case .TableView: return "TableViewController"
            case .CollectionView: return "CollectionViewController"
            }
        }

        func makeDetailController() -> UIViewController {
            switch self {
            case .ScrollView: return ScrollViewController()
            case .TableView: return TableViewController()
            case .CollectionView: return CollectionViewController()
            }
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
        cell.textLabel?.text = Item(rawValue: indexPath.row)?.name
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        guard let item = Item(rawValue: indexPath.row) else { return }
        showViewController(item.makeDetailController(), sender: self)
    }
}