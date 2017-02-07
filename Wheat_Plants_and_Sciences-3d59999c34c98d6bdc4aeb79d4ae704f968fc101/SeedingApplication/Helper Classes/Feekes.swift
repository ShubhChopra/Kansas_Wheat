//
//  Feekes.swift
//  
//
//  Created by Shubh Chopra.
//  Modified by Austin Fuller
//
//

import Foundation
import UIKit


// Represents a generic product. Need an image named "default"

class Feekes
    //creation of class name Feekes
    //Feekes is a growth stage in Agronomics
    // http://agcrops.osu.edu/newsletter/corn-newsletter/what-meaning-feekes-growth-stages-wheat
    
{
    
    //variable declariation with appropriate types for each
    var title: String
    var description: String
    var image: UIImage
    var val: String
    var imagename: String
    
    //initalization block for this class
    init(titled: String, description: String, imageName: String , value:String)
    {
        self.val = value
        self.title = titled
        self.description = description
        
        //if image is provided, use it; if not, use default image
        if let img = UIImage(named: imageName) {
            image = img
        }
        else {
            image = UIImage(named: "default")!
        }
    self.imagename = imageName
    }
    
    //image function
    func configureimage(_ feekes:Feekes) -> String
    {
        
        return feekes.imagename
        
    }
}










