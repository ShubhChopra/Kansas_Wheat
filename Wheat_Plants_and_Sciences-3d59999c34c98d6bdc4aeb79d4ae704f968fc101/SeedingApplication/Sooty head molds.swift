//
//  Sooty head molds.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/25/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class SootyHeadMolds: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Sooty" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["16","17","18"];
                destinationVC.temp = 15;
            }
        }
        
    }
}
