//
//  TableViewCell.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let thumbnailImageView = UIImageView()
        let titleLabel = UILabel()
        let subtitleLabel = UILabel()
        let labelsVStack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        let topLevelHStack = UIStackView(arrangedSubviews: [thumbnailImageView, labelsVStack])
        
        contentView.addSubview(topLevelHStack)

        ; {
            self.thumbnailImageView = thumbnailImageView
            self.titleLabel = titleLabel
            self.subtitleLabel = subtitleLabel
            self.labelsVStack = labelsVStack
            self.topLevelHStack = topLevelHStack
        }()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    weak var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.snp_makeConstraints { make in
                make.size.equalTo(80)
            }
        }
    }
    weak var titleLabel: UILabel! {
        didSet {
            titleLabel.textAlignment = .center
        }
    }

    weak var subtitleLabel: UILabel! {
        didSet {
            subtitleLabel.numberOfLines = 0
            subtitleLabel.textAlignment = .center
        }
    }

    weak var labelsVStack: UIStackView! {
        didSet {
            labelsVStack.axis = .vertical
            labelsVStack.spacing = 10
            labelsVStack.alignment = .center
            labelsVStack.snp_makeConstraints { make in
            }
        }
    }
    weak var topLevelHStack: UIStackView! {
        didSet {
            topLevelHStack.axis = .horizontal
            topLevelHStack.alignment = .top
            topLevelHStack.spacing = 10
            topLevelHStack.snp_makeConstraints { make in
                make.edges.equalTo(contentView).inset(10)
            }
        }
    }
}
