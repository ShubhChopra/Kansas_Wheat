//
//  KnownView.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/19/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class KnownView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //set up for IBOutlets on the Know Seed Size sence
    @IBOutlet weak var rowWidth: UITextField!
    @IBOutlet weak var grams: UILabel!

    @IBOutlet weak var Ounces: UILabel!
    @IBOutlet weak var drillRow: UITextField!
    @IBOutlet weak var seedSize: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //function that calculuates that returns result based of entered variable
    @IBAction func result(_ sender: AnyObject) {
        rowWidth.resignFirstResponder()
        drillRow.resignFirstResponder()
        seedSize.resignFirstResponder()
        
        //once all fields have been entered result is calculated
        if(rowWidth.text != "" && drillRow.text != "" && seedSize.text != "")
        {
            Ounces.text = "Ounces of seed per one drill sprout unit = " + String(( (Double(MyVariables.finalRate) * Double(drillRow.text!)! * Double(rowWidth.text!)! * 16 ) / 12 ) / Double(seedSize.text!)!)
            
            grams.text = "Grams of seed per one drill sprout unit = " + String((( (Double(MyVariables.finalRate) * Double(drillRow.text!)! * Double(rowWidth.text!)! * 16 ) / 12 ) / Double(seedSize.text!)! ) * 435)
        
        }
        
    }
}
