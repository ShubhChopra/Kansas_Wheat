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
    
    @IBOutlet weak var Row: UITextField!
    @IBOutlet weak var wheelDis: UITextField!
    @IBOutlet weak var SeedsperLength: UILabel!

    @IBOutlet weak var revolutions: UILabel!
    @IBOutlet weak var RowLength: UILabel!
    @IBOutlet weak var wheelDia: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var drillrow: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func dis(sender: AnyObject) {
        wheelDia.text = ""
    }
    @IBAction func dia(sender: AnyObject) {
        wheelDis.text = ""
    }
    @IBAction func results(sender: AnyObject) {
        
        Row.resignFirstResponder()
        wheelDis.resignFirstResponder()
        revolutions.resignFirstResponder()
        wheelDia.resignFirstResponder()
        weight.resignFirstResponder()
        drillrow.resignFirstResponder()
        
        
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
