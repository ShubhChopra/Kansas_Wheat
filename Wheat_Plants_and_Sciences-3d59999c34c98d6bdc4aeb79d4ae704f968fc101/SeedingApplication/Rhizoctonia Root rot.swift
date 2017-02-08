//
//  Rhizoctonia Root rot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class Rhizoctonia: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Rhizoctonia" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["67","68"];
                destinationVC.temp = 66;
            }
        }
    }
}
