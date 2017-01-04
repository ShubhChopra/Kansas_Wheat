//
//  Leaf Rust .swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Leaf: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Leaf Rust" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["29","30","31"];
                destinationVC.temp = 28;
            }
        }
        
    }
}
