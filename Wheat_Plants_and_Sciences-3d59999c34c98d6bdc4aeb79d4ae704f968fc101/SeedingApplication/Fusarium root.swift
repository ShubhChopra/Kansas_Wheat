//
//  Fusarium root.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class FusariumRoot: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "FusariumRoot" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["64","65","66"];
                destinationVC.temp = 63;
            }
        }
    }
}
