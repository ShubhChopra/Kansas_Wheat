//
//  Variety-Filter.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/1/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit
class VarietyFilter: UIViewController {
    
    @IBOutlet weak var ph: UISegmentedControl!
    @IBOutlet weak var grazed: UISegmentedControl!
    @IBOutlet weak var fungicide: UISegmentedControl!
    @IBOutlet weak var lodging: UISegmentedControl!
    @IBOutlet weak var clearfield: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Variety Selection"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: applicationVars.applicationBackground)!)
        ph.selectedSegmentIndex = -1
        grazed.selectedSegmentIndex = -1
        fungicide.selectedSegmentIndex = -1
        lodging.selectedSegmentIndex = -1
              clearfield.selectedSegmentIndex = -1
       // tabBarItem = UITabBarItem(title: "Variety", image: UIImage(named: "tab-v1"), tag: 2)

    if(applicationVars.ph == 1)
    {
        ph.selectedSegmentIndex = 0
        }
        if(applicationVars.ph == 2)
        {
            ph.selectedSegmentIndex = 1
        }
        if(applicationVars.grazed == 1)
        {
            grazed.selectedSegmentIndex = 0
        }
        if(applicationVars.grazed == 2)
        {
            grazed.selectedSegmentIndex = 1
        }
        if(applicationVars.fungicide == 1)
        {
            fungicide.selectedSegmentIndex = 0
        }
        if(applicationVars.fungicide == 2)
        {
            fungicide.selectedSegmentIndex = 1
        }
        if(applicationVars.lodging == 1)
        {
            lodging.selectedSegmentIndex = 0
        }
        if(applicationVars.lodging == 2)
        {
            lodging.selectedSegmentIndex = 1
        }
        if(applicationVars.clearfield == 1)
        {
            clearfield.selectedSegmentIndex = 0
        }
        if(applicationVars.clearfield == 2)
        {
            clearfield.selectedSegmentIndex = 1
        }
        
}
    @IBAction func soil(_ sender: AnyObject) {
        switch ph.selectedSegmentIndex
        {
        case 0 :
            applicationVars.ph = 1
        case 1 :
             applicationVars.ph = 2
        default :
            break;
        }

    }
    
    @IBAction func grazed(_ sender: AnyObject) {
        switch grazed.selectedSegmentIndex
        {
        case 0 :
            applicationVars.grazed = 1
        case 1 :
            applicationVars.grazed = 2
        default :
            break;
        }

    }
    
    @IBAction func Fungicide(_ sender: AnyObject) {
        switch fungicide.selectedSegmentIndex
        {
        case 0 :
            applicationVars.fungicide = 1
        case 1 :
            applicationVars.fungicide = 2
        default :
            break;
        }

    }
   
    @IBAction func lodging(_ sender: AnyObject) {
        switch lodging.selectedSegmentIndex
        {
        case 0 :
            applicationVars.lodging = 1
        case 1 :
            applicationVars.lodging = 2
        default :
            break;
        }

    }
       
    @IBAction func Clearfield(_ sender: AnyObject) {
        switch clearfield.selectedSegmentIndex
        {
        case 0 :
            applicationVars.clearfield = 1
        case 1 :
            applicationVars.clearfield = 2
        default :
            break;
        }

    }
    @IBAction func Save(_ sender: AnyObject) {
        
        
    }

}
