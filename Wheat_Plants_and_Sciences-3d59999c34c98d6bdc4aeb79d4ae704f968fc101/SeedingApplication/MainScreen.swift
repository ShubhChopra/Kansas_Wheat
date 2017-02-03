//
//  MainScreen.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/17/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

struct MyVariables {
    static var applicationBackground = "mainScreenBackground"
    
    static var district = ""
    static var ph = 0
    static var grazed = 0
    static var fungicide = 0
    static var lodging = 0
    static var maturity = 0
    static var clearfield = 0
    static var date = ""
    static var rate = ""
    static var seedingRate = 0
    static var finalRate = 0
    static var germinationRate = 0
    static var lat = ""
    static var lon = ""
}
class MainScreen: UIViewController {

    var option = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Management"
        textview.backgroundColor = UIColor.clear;
       // textview.textColor = UIColor.whiteColor();
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "mainScreenBlur")!)

        
}

    @IBOutlet weak var textview: UITextView!
    @IBAction func Nutrient(_ sender: AnyObject) {
        option = "V";
    }

    @IBAction func Variety(_ sender: AnyObject) {
        option = "N";
    }
    
    @IBAction func Diseases(_ sender: AnyObject) {
        option = "D";
    }
    
    @IBAction func Seeding(_ sender: AnyObject) {
        option = "S";
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let tabVC = segue.destination as! UITabBarController
            
            if(option == "V")
                
            {tabVC.selectedIndex = 3}
            if(option == "N")
                
            {tabVC.selectedIndex = 1}
            
            
            if(option == "S")
                
            {tabVC.selectedIndex = 2}
            
            if(option == "D")
                
            {tabVC.selectedIndex = 0}
            
        }*/

    
}
