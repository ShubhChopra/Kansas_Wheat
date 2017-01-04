//
//  Bacterial Streak.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Bacterial: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Bacterial" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["22","23","24"];
                destinationVC.temp = 21;
            }
        }
        
    }
}
