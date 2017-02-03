//
//  startup.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/17/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class startup: UIViewController {
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //set up for first load and enterance of the storyboard
        self.title = "Kansas Wheat";
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: MyVariables.applicationBackground)!)
        self.navigationItem.hidesBackButton = true;
            }

    

}
