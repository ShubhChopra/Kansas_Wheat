//
//  Stripe Rust.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//class that prepares example images for the appropriate disease

import Foundation
import UIKit


class StripeRust: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Stripe Rust" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["43","44","45"];
                destinationVC.temp = 42;
            }
        }
        
    }
}
