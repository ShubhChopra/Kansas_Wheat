//
//  Eyespot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Eyespot: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Eyespot" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["62","63"];
                destinationVC.temp = 61;
            }
        }
        
    }
}
