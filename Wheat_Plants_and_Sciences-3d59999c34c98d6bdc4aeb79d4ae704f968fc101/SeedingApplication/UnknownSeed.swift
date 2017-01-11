//
//  UnknownSeed.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/19/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class UnknownSeed: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //information outlet set up for viewcontroller
    @IBOutlet weak var Row: UITextField!
    @IBOutlet weak var wheelDis: UITextField!
    @IBOutlet weak var SeedsperLength: UILabel!

    @IBOutlet weak var revolutions: UILabel!
    @IBOutlet weak var RowLength: UILabel!
    @IBOutlet weak var wheelDia: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var drillrow: UITextField!
    
    //two functions that clear text for textbox
    @IBAction func dis(_ sender: AnyObject) {
        wheelDia.text = ""
    }
    @IBAction func dia(_ sender: AnyObject) {
        wheelDis.text = ""
    }
    
    //function that calculates the seeding rate based off entered information
    @IBAction func results(_ sender: AnyObject) {
        
        Row.resignFirstResponder()
        wheelDis.resignFirstResponder()
        revolutions.resignFirstResponder()
        wheelDia.resignFirstResponder()
        weight.resignFirstResponder()
        drillrow.resignFirstResponder()
        
        //when all feeds are not empty, calculate seeding rate
        if(Row.text != "")
        {
            RowLength.text = "Row length needed for one sq. ft. (inch) = " + String(Float(12/Int(Row.text!)!))
        }
        if(Row.text != "" && drillrow.text != "")
        {
            SeedsperLength.text = "Seeds per length drill-row needed = " + String ( ((MyVariables.finalRate) * Int(drillrow.text!)! ) / Int(Row.text!)!/12)
        }
        if(drillrow.text != "" && wheelDia.text != "")
        {
            let x = String((Double(drillrow.text!)! * 12) / (Double(wheelDia.text!)! * 3.2))
            revolutions.text = "Number of tire revolutions for desired length of drill-row to collect seeds = " + x
        }
        if(drillrow.text != "" && wheelDis.text != "")
        {
            let x = String((Double(drillrow.text!)! * 12) / (Double(wheelDia.text!)! ))
            revolutions.text = "Number of tire revolutions for desired length of drill-row to collect seeds = " + x
        }
    
    }

}
