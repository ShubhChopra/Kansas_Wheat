//
//  Feekes.swift
//  
//
//  Created by Shubh Chopra.
//
//

import Foundation
import UIKit


// Represents a generic product. Need an image named "default"

class Feekes
{
    var title: String
    var description: String
    var image: UIImage
    var val: String
    var imagename: String
    
    init(titled: String, description: String, imageName: String , value:String)
    {
        self.val = value
        self.title = titled
        self.description = description
        if let img = UIImage(named: imageName) {
            image = img
        }
        else {
            image = UIImage(named: "default")!
        }
    self.imagename = imageName
    }
    func configureimage(_ feekes:Feekes) -> String
    {
        
        return feekes.imagename
        
    }
}










