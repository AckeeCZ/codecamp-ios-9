//
//  CollectionViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 11/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit

private let cellId = "cellId"

//its ok to use UICollectionViewController if the collectionView will always be fullscreen. Unlike UITableViewController, the collectionView isnt the root view.
class CollectionViewController: UIViewController {
    override func loadView() {
        let view = UIView(); view.backgroundColor = .white; view.isOpaque = true; self.view = view

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)

        self.collectionView = collectionView
    }

    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: 100, height: 100)
        layout.estimatedItemSize = CGSize(width: 100, height: 100)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
//        layout.scrollDirection = .Horizontal
        return layout
    }()

    weak var collectionView: UICollectionView! {
        didSet {
            collectionView.backgroundColor = .white
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: cellId)
            collectionView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(named: "profile")
        cell.titleLabel.text = "Lorem ipsum"
        cell.subtitleLabel.text = "Dont make this text too long."
        cell.backgroundColor = .gayColor()
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    // similar to UITableViewDelegate
}
