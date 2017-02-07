//
//  FeekesTableViewController.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/11/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.

//View Controller for Feekes Table

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

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let feeke = feekes[section]
        return feeke.name
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return feekes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let feeke = feekes[section]
        return feeke.feekes.count
      //  return 0
    }

    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let Zoom = UITableViewRowAction (style: .normal, title: "Zoom Picture" , handler: {(action:UITableViewRowAction, indexPath:IndexPath!) -> Void in
        
            self.performSegue(withIdentifier: "zoomfeekes", sender: indexPath)
        
        })
        Zoom.backgroundColor = UIColor.green
        
        return [Zoom]
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Feekes Cell", for: indexPath) as! FeekesTableViewCell

        // Configure the cell...
        let feek = feekes[indexPath.section]
        let feeke = feek.feekes[indexPath.row]
        
        cell.configureCellWith(feeke)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "ValueofFeekes", sender: indexPath)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "zoomfeekes" {
            
           let zoomedPhotoViewController = segue.destination as? ZoomedPhotoViewController
            
            let indexPat = sender!
            let feek = feekes[(indexPat as AnyObject).section]
            let feeke = feek.feekes[(indexPat as AnyObject).row]
            
            
            zoomedPhotoViewController!.photoName = feeke.imagename.replacingOccurrences(of: "x", with: "", options: NSString.CompareOptions.literal, range: nil)

            
        }
        if segue.identifier == "ValueofFeekes" {
        let GrowthStage = segue.destination as? Nitrogen
            let indexPat = sender!
            let feek = feekes[(indexPat as AnyObject).section]
            let feeke = feek.feekes[(indexPat as AnyObject).row]
            
            
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
