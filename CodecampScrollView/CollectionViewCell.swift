//
//  CollectionViewCell.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 11/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)

        let imageView = UIImageView()
        let titleLabel = UILabel()
        let subtitleLabel = UILabel()
        let vStack = UIStackView(arrangedSubviews: [imageView, titleLabel, subtitleLabel])

        contentView.addSubview(vStack)
        ; {
            self.imageView = imageView
            self.titleLabel = titleLabel
            self.subtitleLabel = subtitleLabel
            self.vStack = vStack
        }()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    weak var imageView: UIImageView!
    weak var titleLabel: UILabel! {
        didSet {
            titleLabel.textAlignment = .Center
        }
    }

    weak var subtitleLabel: UILabel! {
        didSet {
            subtitleLabel.numberOfLines = 0
            subtitleLabel.textAlignment = .Center
        }
    }
    weak var vStack: UIStackView! {
        didSet {
            vStack.axis = .Vertical
            vStack.spacing = 20
            vStack.alignment = .Center
            vStack.snp_makeConstraints { make in
                make.edges.equalTo(contentView)
                make.width.equalTo(UIScreen.mainScreen().bounds.size.width).priority(999) // lower priority to make autolayout shut up in log
            }
        }
    }
}
