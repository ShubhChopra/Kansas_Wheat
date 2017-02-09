//
//  Stem Rust.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class StemRust: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Stem Rust" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["40","41","42"];
                destinationVC.temp = 39;
            }
        }
        
    }
}
