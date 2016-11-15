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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    fileprivate enum Item: Int {
        case scrollView = 0
        case tableView
        case collectionView

        var name: String {
            switch self {
            case .scrollView: return "ScrollViewController"
            case .tableView: return "TableViewController"
            case .collectionView: return "CollectionViewController"
            }
        }

        func makeDetailController() -> UIViewController {
            switch self {
            case .scrollView: return ScrollViewController()
            case .tableView: return TableViewController()
            case .collectionView: return CollectionViewController()
            }
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = Item(rawValue: indexPath.row)?.name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let item = Item(rawValue: indexPath.row) else { return }
        show(item.makeDetailController(), sender: self)
    }
}
