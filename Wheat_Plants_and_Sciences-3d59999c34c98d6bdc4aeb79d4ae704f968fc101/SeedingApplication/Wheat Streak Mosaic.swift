//
//  Wheat Streak Mosaic.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class WheatStreak: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Wheat Steak" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["54","55","56"];
                destinationVC.temp = 53;
            }
        }
        
    }
}
