//
//  tabbarViewController.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/19/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class tabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showmain"{
            print("showLogin seque called")
            let bottomBar = segue.destination as! startup
            bottomBar.hidesBottomBarWhenPushed = true
            bottomBar.navigationItem.hidesBackButton = true
        }
    }
}
