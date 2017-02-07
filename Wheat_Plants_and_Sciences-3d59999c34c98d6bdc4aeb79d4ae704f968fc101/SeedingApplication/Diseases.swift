//
//  SecondViewController.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/17/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class Diseases: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Diseases"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: applicationVars.applicationBackground)!)
        
       // tabBarItem = UITabBarItem(title: "Diseases", image: UIImage(named: "tab-d1"), tag: 4)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

