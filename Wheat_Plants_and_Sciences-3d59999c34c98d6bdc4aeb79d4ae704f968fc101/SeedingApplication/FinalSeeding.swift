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
        
        //sets variables once view loads if they aren't zero
        if(applicationVars.seedingRate != 0)
        {
            rateAcre.text = String(applicationVars.seedingRate)
        }
        if(applicationVars.germinationRate != 0)
        {
            RatePer.text = String(applicationVars.germinationRate)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //set up for outlets on the Final Seeding Scene
    @IBOutlet weak var rateAcre: UITextField!
    @IBOutlet weak var RatePer: UITextField!
    @IBOutlet weak var FinalSqft: UILabel!

    @IBOutlet weak var FinalAcre: UILabel!
    @IBOutlet weak var rateSqft: UITextField!
    
    //function to calculate final seeding rate
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
            applicationVars.finalRate = (Int(rateSqft.text!)! * 100) / Int(RatePer.text!)!
            
        }
    }
    
    //when view is leaving, change applicationVars to these values
    override func viewWillDisappear(_ animated: Bool) {
        if(rateAcre.text != "")
        {
        
        applicationVars.seedingRate = Int (rateAcre.text!)!
        }
        if(RatePer.text != "")
        {
            applicationVars.germinationRate = Int (RatePer.text!)!
        }
        
    }

    //if any value is entered, save it
    @IBAction func sqft(_ sender: AnyObject) {
        
        if(rateSqft.text != "")
        {
            rateAcre.text = String(Int(rateSqft.text!)! * 43560)
        }
    }
    //if any value is entered, save it
    @IBAction func acre(_ sender: AnyObject) {
        if(rateAcre.text != "")
        {
            rateSqft.text = String(Int(rateAcre.text!)! / 43560)
        }
    }
}
