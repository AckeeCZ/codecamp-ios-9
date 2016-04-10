//
//  ViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit
import SnapKit

//class ViewController: UIViewController {
//
//    override func loadView() {
//        let view = UIView(); view.backgroundColor = .whiteColor(); view.opaque = true; self.view = view
//
//        let imageView = UIImageView()
//        let titleLabel = UILabel()
//        let subtitleLabel = UILabel()
//        let vStack = UIStackView(arrangedSubviews: [imageView, titleLabel, subtitleLabel])
//
//        view.addSubview(vStack)
//
//        self.imageView = imageView
//        self.titleLabel = titleLabel
//        self.subtitleLabel = subtitleLabel
//        self.vStack = vStack
//    }
//
//    weak var imageView: UIImageView!
//    weak var titleLabel: UILabel! {
//        didSet {
//            titleLabel.textAlignment = .Center
//        }
//    }
//
//    weak var subtitleLabel: UILabel! {
//        didSet {
//            subtitleLabel.numberOfLines = 0
//            subtitleLabel.textAlignment = .Center
//        }
//    }
//    weak var vStack: UIStackView! {
//        didSet {
//            vStack.axis = .Vertical
//            vStack.spacing = 20
//            vStack.alignment = .Center
//            vStack.snp_makeConstraints { make in
//                make.edges.equalTo(view)
//            }
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        imageView.image = UIImage(named: "profile")
//        titleLabel.text = "Lorem ipsum"
//        subtitleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl."
//    }
//}

class ViewController: UIViewController {

    override func loadView() {
        let view = UIView(); view.backgroundColor = .whiteColor(); view.opaque = true; self.view = view

        let imageView = UIImageView()
        let titleLabel = UILabel()
        let subtitleLabel = UILabel()
        let vStack = UIStackView(arrangedSubviews: [imageView, titleLabel, subtitleLabel])

        let scrollView = UIScrollView()
        scrollView.addSubview(vStack)
        view.addSubview(scrollView)

        self.imageView = imageView
        self.titleLabel = titleLabel
        self.subtitleLabel = subtitleLabel
        self.scrollView = scrollView
        self.vStack = vStack
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
                make.edges.equalTo(scrollView)
                make.width.equalTo(view)
            }
        }
    }
    weak var scrollView: UIScrollView! {
        didSet {
            scrollView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
//            scrollView.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "profile")
        titleLabel.text = "Lorem ipsum"
        subtitleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam est enim, interdum sit ametincidunteu, hendrerit eu lorem. In hac habitasse platea dictumst. Donec mattis felis quis fermentum tincidunt.d dolor et dui imperdiet sodales sit amet nec nulla. Nulla iaculis metus quis lectus euismod sodales. Utx ac risus lacinia, eget bibendum ligula maximus. Aenean sollicitudin commodo rhoncus. Nulla aliquam nibh aque faucibus, nec egestas elit pharetra. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl. Sed mattis ornare mauris, a auctor risus aliquet vitae. Donec sodales lorem felis, ut maximus nunc scelerisque ut. Ut feugiat mauris ex. Aliquam ornare ut lacus a cursus. Nunc eget erat nec nisl elementum tempor. Duis nec magna odio. Integer vel eros ac dolor vulputate tristique vitae at urna. Donec sed eros mauris. Morbi non nunc quis quam vehicula tempus nec vitae lacus. Sed molestie, neque quis mattis viverra, urna mauris suscipit tortor, eget tincidunt elit libero vel erat.Nam convallis, mi nec imperdiet egestas, libero ipsum vestibulum diam, in tincidunt elit nibh eget mi. Donec sem lacus, congue non hendrerit non, molestie at lacus. Suspendisse nec massa ac felis viverra facilisis id vitae quam. Nulla facilisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vel sem quis enim tempus ultrices eget sit amet nisl."
    }
}

extension ViewController: UIScrollViewDelegate {
    // scroll
    func scrollViewDidScroll(scrollView: UIScrollView) { }
    func scrollViewWillBeginDragging(scrollView: UIScrollView) { }
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) { }
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) { }
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) { }
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) { }
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) { // this one is the only interesting one :)
        targetContentOffset.memory = scrollView.center
    }
    func scrollViewDidScrollToTop(scrollView: UIScrollView) { }
    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool { return true }
    // zoom
    func scrollViewDidZoom(scrollView: UIScrollView) { }
    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) { }
    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) { }
}
