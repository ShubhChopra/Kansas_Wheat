//
//  MainScreen.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/17/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


/// Collection of varibles that are used through the application.
struct applicationVars {
    static var applicationBackground = ""
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
    static var county = ""
}

class MainScreen: UIViewController {

    var option = "";
    
    /// Function that runs when the view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        if(applicationVars.county != "") {
            self.title = applicationVars.county + " County"
        }
        else {
            self.title = "Management"
        }
        textview.backgroundColor = UIColor.clear;
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: applicationVars.applicationBackground)!)
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
}
