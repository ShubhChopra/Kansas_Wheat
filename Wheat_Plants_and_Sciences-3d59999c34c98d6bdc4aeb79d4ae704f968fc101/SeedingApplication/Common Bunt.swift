//
//  Common Bunt.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/25/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//class that prepares example images for the appropriate disease

import UIKit
import Foundation


class CommonBunt: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Common" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["3","4","5"];
                destinationVC.temp = 2;
            }
        }
        
    }
}
