//
//  Variety-Filter.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/1/16.
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
        ph.selectedSegmentIndex = -1
        grazed.selectedSegmentIndex = -1
        fungicide.selectedSegmentIndex = -1
        lodging.selectedSegmentIndex = -1
              clearfield.selectedSegmentIndex = -1
       // tabBarItem = UITabBarItem(title: "Variety", image: UIImage(named: "tab-v1"), tag: 2)

    if(MyVariables.ph == 1)
    {
        ph.selectedSegmentIndex = 0
        }
        if(MyVariables.ph == 2)
        {
            ph.selectedSegmentIndex = 1
        }
        if(MyVariables.grazed == 1)
        {
            grazed.selectedSegmentIndex = 0
        }
        if(MyVariables.grazed == 2)
        {
            grazed.selectedSegmentIndex = 1
        }
        if(MyVariables.fungicide == 1)
        {
            fungicide.selectedSegmentIndex = 0
        }
        if(MyVariables.fungicide == 2)
        {
            fungicide.selectedSegmentIndex = 1
        }
        if(MyVariables.lodging == 1)
        {
            lodging.selectedSegmentIndex = 0
        }
        if(MyVariables.lodging == 2)
        {
            lodging.selectedSegmentIndex = 1
        }
        if(MyVariables.clearfield == 1)
        {
            clearfield.selectedSegmentIndex = 0
        }
        if(MyVariables.clearfield == 2)
        {
            clearfield.selectedSegmentIndex = 1
        }
        
}
    @IBAction func soil(_ sender: AnyObject) {
        switch ph.selectedSegmentIndex
        {
        case 0 :
            MyVariables.ph = 1
        case 1 :
             MyVariables.ph = 2
        default :
            break;
        }

    }
    
    @IBAction func grazed(_ sender: AnyObject) {
        switch grazed.selectedSegmentIndex
        {
        case 0 :
            MyVariables.grazed = 1
        case 1 :
            MyVariables.grazed = 2
        default :
            break;
        }

    }
    
    @IBAction func Fungicide(_ sender: AnyObject) {
        switch fungicide.selectedSegmentIndex
        {
        case 0 :
            MyVariables.fungicide = 1
        case 1 :
            MyVariables.fungicide = 2
        default :
            break;
        }

    }
   
    @IBAction func lodging(_ sender: AnyObject) {
        switch lodging.selectedSegmentIndex
        {
        case 0 :
            MyVariables.lodging = 1
        case 1 :
            MyVariables.lodging = 2
        default :
            break;
        }

    }
       
    @IBAction func Clearfield(_ sender: AnyObject) {
        switch clearfield.selectedSegmentIndex
        {
        case 0 :
            MyVariables.clearfield = 1
        case 1 :
            MyVariables.clearfield = 2
        default :
            break;
        }

    }
    @IBAction func Save(_ sender: AnyObject) {
        
        
    }

}
