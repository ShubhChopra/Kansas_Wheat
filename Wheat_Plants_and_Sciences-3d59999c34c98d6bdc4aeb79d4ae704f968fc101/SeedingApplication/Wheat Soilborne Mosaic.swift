//
//  Wheat Soilborne Mosaic.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class WheatSoilborne: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "Wheat Soilborne" )
        {
            if let destinationVC = segue.destinationViewController as? CollectionViewController {
                destinationVC.photos = ["49","50","51"];
                destinationVC.temp = 48;
            }
        }
        
    }
}