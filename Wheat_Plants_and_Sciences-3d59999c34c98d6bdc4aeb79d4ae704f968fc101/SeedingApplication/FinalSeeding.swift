//
//  FinalSeeding.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/18/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class FinalSeeding: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(MyVariables.seedingRate != 0)
        {
            rateAcre.text = String(MyVariables.seedingRate)
        }
        if(MyVariables.germinationRate != 0)
        {
            RatePer.text = String(MyVariables.germinationRate)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var rateAcre: UITextField!
    @IBOutlet weak var RatePer: UITextField!
    @IBOutlet weak var FinalSqft: UILabel!

    @IBOutlet weak var FinalAcre: UILabel!
    @IBOutlet weak var rateSqft: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func calculate(_ sender: AnyObject) {
        
        rateSqft.resignFirstResponder()
        RatePer.resignFirstResponder()
        rateSqft.resignFirstResponder()
        if(rateAcre.text != "" && RatePer.text != "")
        {
            FinalAcre.text = "Final Seeding Rate(seeds/ac) = " + String(Int(rateAcre.text!)! / Int(RatePer.text!)! * 100);
            
        }
        if(rateSqft.text != "" && RatePer.text != "")
        {
            FinalSqft.text = "Final Seeding Rate(seeds/Sq. ft.) = " + String((Int(rateSqft.text!)! * 100) / Int(RatePer.text!)! );
            MyVariables.finalRate = (Int(rateSqft.text!)! * 100) / Int(RatePer.text!)!
            
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if(rateAcre.text != "")
        {
        
        MyVariables.seedingRate = Int (rateAcre.text!)!
        }
        if(RatePer.text != "")
        {
            MyVariables.germinationRate = Int (RatePer.text!)!
        }
        
    }

    @IBAction func sqft(_ sender: AnyObject) {
        
        if(rateSqft.text != "")
        {
            rateAcre.text = String(Int(rateSqft.text!)! * 43560)
        }
    }
    @IBAction func acre(_ sender: AnyObject) {
        if(rateAcre.text != "")
        {
            rateSqft.text = String(Int(rateAcre.text!)! / 43560)
        }
    }
}
