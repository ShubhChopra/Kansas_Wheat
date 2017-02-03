//
//  Seeding.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/18/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class Seeding: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Seeding"
      //  tabBarItem = UITabBarItem(title: "Seeding", image: UIImage(named: "tab-s1"), tag: 3)
      //  self.navigationItem.rightBarButtonItem = UIBarButtonItem();
        
        // if statements that set region and zone for seeding rate and seeding data
        if (MyVariables.rate=="western") {
            optimumrate.text = "Optimum Seeding Rate = 750,000 - 900,000 seeds/acre"
            }
        if (MyVariables.rate=="central") {
            optimumrate.text = "Optimum Seeding Rate = 900,000 - 1,125,000 seeds/acre"
        }
        if (MyVariables.rate=="eastern") {
            optimumrate.text = "Optimum Seeding Rate = 1,125,000 - 1,350,000 seeds/acre"
        }
       
            if(MyVariables.date=="zone1")
            {
                optimumdate.text = "Optimum Seeding Date = September 10th-30th"
            }
            if(MyVariables.date=="zone2")
            {
                optimumdate.text = "Optimum Seeding Date = September 15th - October 20th"
            }
            if(MyVariables.date=="zone3")
            {
                optimumdate.text = "Optimum Seeding Date = September 25th - October 20th"
        }
            if(MyVariables.date=="zone4")
            {
                optimumdate.text = "October 5th-25th"
            }


        // Do any additional setup after loading the view.
    }
    
    //outlet for labels
    @IBOutlet weak var optimumrate: UILabel!
    @IBOutlet weak var optimumdate: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //function for know seeding rate
    @IBAction func KnownB(_ sender: AnyObject) {
        
        //if final seeding rate is not zero
        if(MyVariables.finalRate != 0)
    {
        //then go to this screen
        performSegue(withIdentifier: "Known", sender: self)
    }
    else{
        //else perform this alert
        let alert = UIAlertController(title: "Alert!", message: " You need to complete the Final Seeding Rate section", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        
        
        }

    }
    
    //function for unknown seeding rate
    @IBAction func UnknownB(_ sender: AnyObject) {
        
        //if finalRate doesn't equal zero
        if(MyVariables.finalRate != 0)
        {
            //go to this scene
            performSegue(withIdentifier: "Unknown", sender: self)
        }
        else{
            //else this alert to user
            let alert = UIAlertController(title: "Alert!", message: " You need to complete the Final Seeding Rate section", preferredStyle: .alert)
            
            
            
            //3. Grab the value from the text field, and print it when the user clicks OK.
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                
                //  let textField = alert.textFields![0] as UITextField;
                // self.scrotalCircumference.text=textField.text;
            }))
            
            // 4. Present the alert.
            self.present(alert, animated: true, completion: nil)
            

        }
    }
    
    //info button
    @IBAction func Volume(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Volume to seed per acre", message: " Volume of seeds to be planted in an acre based on seed size and optimum seed rate.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }

    //info button
    @IBAction func Known(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Drill Calibration (known Seed Size)", message: " Step-by-step drill calibration if seed size is known.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }
    //info button
    @IBAction func Unknown(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Drill Calibration (Unknown Seed Size)", message: " Step-by-step drill calibration if seed size is not known.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }
    //info button
    @IBAction func FinalSeeding(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Drill Calibration (known Seed Size)", message: " Target number of seeds planted per acre corrected by percent seed germination.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }
    
    //info button
    @IBAction func date(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Optimum Planting Date", message: " The date range during which it is best to plant", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        
        

    }
    
    //info button
    @IBAction func rate(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Optimum Planting Rate", message: " The approximate yield of the plant", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        
        

    }
    
    //info button
    @IBOutlet weak var rate: UIButton!
}
