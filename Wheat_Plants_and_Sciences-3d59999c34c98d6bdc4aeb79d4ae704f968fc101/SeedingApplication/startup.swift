//
//  startup.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/17/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class startup: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Kansas Wheat";
        if(UIDevice.current.userInterfaceIdiom == .phone) {
            applicationVars.applicationBackground = "mainScreenBackground"
        }
        else {
            applicationVars.applicationBackground = "whitebackground"
        }
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: applicationVars.applicationBackground)!)
        self.navigationItem.hidesBackButton = true;
    }
}
