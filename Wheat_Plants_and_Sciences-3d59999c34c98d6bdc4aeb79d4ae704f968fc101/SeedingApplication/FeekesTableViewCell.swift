//
//  FeekesTableViewCell.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/11/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

//this class sets up the view for the FeekesData class which uses the Feekes.swift class.

class FeekesTableViewCell: UITableViewCell {

    //outlets for information setup
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Discription: UILabel!
    
    
    //When awoken from nib, tab selects cell
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UIGestureRecognizer(target: self, action: #selector(FeekesTableViewCell.imagetap(_:)))
        ImageView.addGestureRecognizer(tap)
    }
    
    //does nothnig because cell is selected before image can be selected
    func imagetap(_ sender: UIGestureRecognizer)
    {
        print("Hello");
    }
    
    //cell configuration in the list 
    func configureCellWith(_ feekes:Feekes)
    {
        ImageView.clipsToBounds = true
        ImageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView?.image = feekes.image
        Title.text = feekes.title
        Discription.text = feekes.description
    }
}
