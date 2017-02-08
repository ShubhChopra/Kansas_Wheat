//
//  Powdery Mildew.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class Powdery: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Powdery" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["32","33","34"];
                destinationVC.temp = 31;
            }
        }
    }
}
