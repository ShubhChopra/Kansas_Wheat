//
//  Common Root rot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//class that prepares example images for the appropriate disease

import Foundation
import UIKit


class CommonRoot: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "CommonRoot" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["60","61"];
                destinationVC.temp = 59;
            }
        }
        
    }
}
