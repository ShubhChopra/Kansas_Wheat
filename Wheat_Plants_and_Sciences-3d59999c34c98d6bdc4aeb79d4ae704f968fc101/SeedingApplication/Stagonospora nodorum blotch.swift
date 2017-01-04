//
//  Stagonospora Nodorum Blotch.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Stagonospora: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Stagonospora" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["19","20","21"];
                destinationVC.temp = 18;
            }
        }
        
    }
}
