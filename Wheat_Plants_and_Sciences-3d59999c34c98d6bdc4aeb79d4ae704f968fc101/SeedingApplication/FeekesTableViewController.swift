//
//  FeekesTableViewController.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/11/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class FeekesTableViewController: UITableViewController  {

    
    
    lazy var feekes: [FeekesData] = {
        return FeekesData.feekesdata()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
                // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let feeke = feekes[section]
        return feeke.name
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return feekes.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let feeke = feekes[section]
        return feeke.feekes.count
      //  return 0
    }

    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let Zoom = UITableViewRowAction (style: .Normal, title: "Zoom Picture" , handler: {(action:UITableViewRowAction, indexPath:NSIndexPath!) -> Void in
        
            self.performSegueWithIdentifier("zoomfeekes", sender: indexPath)
        
        })
        Zoom.backgroundColor = UIColor.greenColor()
        
        return [Zoom]
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Feekes Cell", forIndexPath: indexPath) as! FeekesTableViewCell

        // Configure the cell...
        let feek = feekes[indexPath.section]
        let feeke = feek.feekes[indexPath.row]
        
        cell.configureCellWith(feeke)

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("ValueofFeekes", sender: indexPath)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "zoomfeekes" {
            
           let zoomedPhotoViewController = segue.destinationViewController as? ZoomedPhotoViewController
            
            let indexPat = sender!
            let feek = feekes[indexPat.section]
            let feeke = feek.feekes[indexPat.row]
            
            
            zoomedPhotoViewController!.photoName = feeke.imagename.stringByReplacingOccurrencesOfString("x", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)

            
        }
        if segue.identifier == "ValueofFeekes" {
        let GrowthStage = segue.destinationViewController as? Nitrogen
            let indexPat = sender!
            let feek = feekes[indexPat.section]
            let feeke = feek.feekes[indexPat.row]
            
            
            GrowthStage!.growthvalue = "Feekes 4 (click and hold for more info)"//feeke.val
            

        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
