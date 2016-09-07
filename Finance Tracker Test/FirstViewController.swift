//
//  FirstViewController.swift
//  Finance Tracker Test
//
//  Created by Kyle Kloberdanz on 7/11/15.
//  Copyright © 2015 University of Iowa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	// when pressed, segues to edit view controller
	@IBAction func editCellButtonWasPressed(sender: UIButton) {
		print("Edit Button Pressed")
	}
	
	@IBOutlet weak var theTableView: UITableView!
	
	@IBOutlet weak var cell: UIView!
	
	var CategoriesArray: NSMutableArray! = NSMutableArray()
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return CategoriesArray.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		var cell: UITableViewCell = self.theTableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
		
		//cell.textLabel?.text = self.CategoriesArray.objectAtIndex(indexPath.row) as? String
		
		if indexPath.row % 2 == 0{
			cell.backgroundColor = UIColor.blueColor()
		} else {
			cell.backgroundColor = UIColor.whiteColor()
		}
		
		let cellInfo = CategoriesArray[indexPath.row]
		
		
		return cell
	}
		
	@IBAction func addCellWasPressed(sender: UIButton) {
		print("Add Cell Button Pressed")
		self.CategoriesArray.addObject("This is a cell")
		self.theTableView.rowHeight = UITableViewAutomaticDimension
		self.theTableView.estimatedRowHeight = 44.0
		self.theTableView.reloadData()
	}
	
	// Switches for monthly, weekly, daily
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

