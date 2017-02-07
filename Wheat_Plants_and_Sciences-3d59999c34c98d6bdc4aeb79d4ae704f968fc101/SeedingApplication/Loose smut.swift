//
//  Loose smut.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/25/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//class that prepares example images for the appropriate disease

import Foundation
import UIKit


class LooseSmut: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Loose" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["13","14","15"];
                destinationVC.temp = 12;
            }
        }
        
    }
}
