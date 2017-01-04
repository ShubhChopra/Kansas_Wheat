//
//  Barley Yellow Dwarf .swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/26/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


class Barley: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Barley" )
        {
            if let destinationVC = segue.destination as? CollectionViewController {
                destinationVC.photos = ["25","26","27","28"];
                destinationVC.temp = 24;
            }
        }
        
    }
}
