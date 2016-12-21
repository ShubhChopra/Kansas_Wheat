//
//  Ergot.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Ergot: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "Ergot" )
        {
            if let destinationVC = segue.destinationViewController as? CollectionViewController {
                destinationVC.photos = ["6","7","8"];
                destinationVC.temp = 5;
            }
        }
        
    }
}