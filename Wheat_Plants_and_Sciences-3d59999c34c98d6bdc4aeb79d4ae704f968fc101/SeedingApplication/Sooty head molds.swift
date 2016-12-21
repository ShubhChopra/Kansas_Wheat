//
//  Sooty head molds.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class SootyHeadMolds: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "Sooty" )
        {
            if let destinationVC = segue.destinationViewController as? CollectionViewController {
                destinationVC.photos = ["16","17","18"];
                destinationVC.temp = 15;
            }
        }
        
    }
}