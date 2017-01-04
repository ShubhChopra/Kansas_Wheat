//
//  FeekesTableViewCell.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 6/11/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class FeekesTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!

    @IBOutlet weak var Title: UILabel!
    
    @IBOutlet weak var Discription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UIGestureRecognizer(target: self, action: #selector(FeekesTableViewCell.imagetap(_:)))
        ImageView.addGestureRecognizer(tap)
    }
    func imagetap(_ sender: UIGestureRecognizer)
    {
        print("Hello");
    }
    func configureCellWith(_ feekes:Feekes)
    {
        ImageView.clipsToBounds = true
        ImageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView?.image = feekes.image
        Title.text = feekes.title
        Discription.text = feekes.description
    }
   

      }
