//
//  Volume.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/18/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class Volume: UIViewController {

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        //view adaptations based on known variables
        if (applicationVars.seedingRate != 0)
        {
            rate.text = String(applicationVars.seedingRate)
            
        }
        if (applicationVars.rate=="western") {
            rate.placeholder = "750,000 - 900,000 seeds/acre"
        }
        if (applicationVars.rate=="central") {
            rate.placeholder = "900,000 - 1,125,000 seeds/acre"
        }
        if (applicationVars.rate=="eastern") {
            rate.placeholder = "1,125,000 - 1,350,000 seeds/acre"
        }

        
        
        // Do any additional setup after loading the view.
    }

    
    //outlet setups
    @IBOutlet weak var irrigated: UISegmentedControl!
    @IBOutlet weak var size: UITextField!
    @IBOutlet weak var rate: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        //when leaving screen, save seedingRate
        if (rate.text != "")
        
        {
            applicationVars.seedingRate = Int(rate.text!)!
        }
    }
    
    
    //if it is being irrigated, then these seeding rates
    @IBAction func irrigation(_ sender: AnyObject) {
        switch irrigated.selectedSegmentIndex
        {
        case 0 :
            rate.placeholder = "1,125,000 - 1,350,000 seeds/acre"
        case 1 :
            if (applicationVars.rate=="western") {
                rate.placeholder = "750,000 - 900,000 seeds/acre"
            }
            if (applicationVars.rate=="central") {
                rate.placeholder = "900,000 - 1,125,000 seeds/acre"
            }
            if (applicationVars.rate=="eastern") {
                rate.placeholder = "1,125,000 - 1,350,000 seeds/acre"
            }

        default :
            break;
        }

    }

    //function to find optimal planting date
    @IBAction func result(_ sender: AnyObject) {
        var dat = "";
        if(size.text != "" && rate.text != "")
        {
        if(applicationVars.date=="zone1")
        {
            dat = "September 10th-30th"
        }
        if(applicationVars.date=="zone2")
        {
            dat = "September 15th- October 20th"
        }
        if(applicationVars.date=="zone3")
        {
            dat = "September 25th- October 20th"
        }
        if(applicationVars.date=="zone4")
        {
            dat = "October 5th-25th"
        }
        let alert = UIAlertController(title: "Seed Volume", message:" For the seed size and population specified, please plant" + String(Int(rate.text!)! / Int(size.text!)!) + " lbs/acre \n The optimum planting window for your region is " + dat , preferredStyle: .alert)
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
           
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
