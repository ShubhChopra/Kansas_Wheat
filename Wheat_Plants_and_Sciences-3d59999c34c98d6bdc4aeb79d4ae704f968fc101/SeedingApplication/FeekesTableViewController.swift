//
//  FeekesTableViewController.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/11/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.


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
        return feekes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let feeke = feekes[section]
        return feeke.feekes.count
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
        let feek = feekes[indexPath.section]
        let feeke = feek.feekes[indexPath.row]
        
        cell.configureCellWith(feeke)

        return cell
    }
    
    /*override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "ValueofFeekes", sender: indexPath)
        
    }*/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "zoomfeekes" {
            
           let zoomedPhotoViewController = segue.destination as? ZoomedPhotoViewController
            
            let indexPat = sender!
            let feek = feekes[(indexPat as AnyObject).section]
            let feeke = feek.feekes[(indexPat as AnyObject).row]
            
            
            zoomedPhotoViewController!.photoName = feeke.imagename.replacingOccurrences(of: "x", with: "", options: NSString.CompareOptions.literal, range: nil)

            
        }
    }
}
