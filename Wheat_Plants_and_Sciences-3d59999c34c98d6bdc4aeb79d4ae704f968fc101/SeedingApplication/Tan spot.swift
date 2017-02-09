//
//  Tan spot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class Tan: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Tan" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["46","47","48"];
                destinationVC.temp = 48;
            }
        }
        
    }
}
