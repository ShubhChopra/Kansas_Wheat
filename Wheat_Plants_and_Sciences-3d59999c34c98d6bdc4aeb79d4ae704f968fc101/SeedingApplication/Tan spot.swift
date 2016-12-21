//
//  Tan spot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Tan: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "Tan" )
        {
            if let destinationVC = segue.destinationViewController as? CollectionViewController {
                destinationVC.photos = ["46","47","48"];
                destinationVC.temp = 48;
            }
        }
        
    }
}