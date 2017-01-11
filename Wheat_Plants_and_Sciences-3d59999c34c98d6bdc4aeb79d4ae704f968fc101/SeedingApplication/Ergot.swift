//
//  Ergot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//class that prepares example images for the appropriate disease

import Foundation
import UIKit


class Ergot: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Ergot" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["6","7","8"];
                destinationVC.temp = 5;
            }
        }
        
    }
}
