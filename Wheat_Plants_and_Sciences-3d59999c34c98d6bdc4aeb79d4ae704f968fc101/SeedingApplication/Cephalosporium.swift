//
//  Cephalosporium.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

class Cephalosporium: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Cephalosporium" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["57","58","59"];
                destinationVC.temp = 56;
            }
        }
    }
}
