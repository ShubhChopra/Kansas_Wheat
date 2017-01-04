//
//  Wheat Spindle Streak Mosaic.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class WheatSpindle: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Wheat Spindle" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["52","53"];
                destinationVC.temp = 51;
            }
        }
        
    }
}
