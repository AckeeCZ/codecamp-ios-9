//
//  TableViewController.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 10/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import UIKit

private let cellId = "cellId"

//class TableViewController: UIViewController {
//
//    override func loadView() {
//        let view = UIView(); view.backgroundColor = .whiteColor(); view.opaque = true; self.view = view
//
//        let tableView = UITableView(frame: .zero, style: .Plain)
//        view.addSubview(tableView)
//        self.tableView = tableView
//    }
//
//    weak var tableView: UITableView! {
//        didSet {
//            tableView.dataSource = self
//            tableView.delegate = self
//            tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellId)
//            tableView.snp_makeConstraints { make in
//                make.edges.equalTo(view)
//            }
//        }
//    }
//}
//
//extension TableViewController: UITableViewDataSource {
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 100
//    }
//
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
//        cell.imageView?.image = UIImage(named: "profile")
//        cell.textLabel?.text = "Lorem Ipsum"
//        return cell
//    }
//}

extension TableViewController: UITableViewDelegate {
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willBeginEditingRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String? {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, accessoryTypeForRowWithIndexPath indexPath: NSIndexPath) -> UITableViewCellAccessoryType {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
//    }
//    func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
//        <#code#>
//    }
//    func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath {
//        <#code#>
//    }
//    //No tableViewDidReload, use dispatch_async
}

extension TableViewController/*: UIScrollViewDelegate*/ {
    // scroll
//    func scrollViewDidScroll(scrollView: UIScrollView) {
//        guard scrollView == tableView,
//            let indexPath = tableView.indexPathForRowAtPoint(tableView.convertPoint(view.center, fromView: view)),
//            let cell = tableView.cellForRowAtIndexPath(indexPath) else { return }
//        cell.backgroundColor = .gayColor()
//    }
//    func scrollViewWillBeginDragging(scrollView: UIScrollView) { }
//    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) { }
//    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) { }
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView) { }
//    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) { }
//    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        guard scrollView == tableView,
//            let indexPath = tableView.indexPathForRowAtPoint(targetContentOffset.memory)
//            else { return }
//        targetContentOffset.memory = tableView.rectForRowAtIndexPath(indexPath).origin //doesnt work
//    }
//    func scrollViewDidScrollToTop(scrollView: UIScrollView) { }
//    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool { return true }
//    // zoom
//    func scrollViewDidZoom(scrollView: UIScrollView) { }
//    func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?) { }
//    func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) { }
}

class TableViewController: UIViewController {
    
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
//            tableView.rowHeight = UITableViewAutomaticDimension
//            tableView.estimatedRowHeight = 100
            tableView.snp_makeConstraints { make in
                make.edges.equalTo(view)
            }
        }
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! TableViewCell
        cell.thumbnailImageView.image = UIImage(named: "profile")
        cell.titleLabel.text = "Lorem Ipsum"
        cell.subtitleLabel.text = "Dolor sit amet etc etc Dolor sit amet etc etc Dolor sit amet etc etc Dolor sit amet etc etc Dolor sit amet etc etc"
        return cell
    }
}
