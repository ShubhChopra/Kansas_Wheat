//
//  VarietyDiscription.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 7/20/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class VarietyDiscription: UIViewController {
    
    //Outlets for view
    @IBOutlet weak var Image2: UIImageView!
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var Discription: UITextView!
    @IBOutlet weak var TitleDiscription: UILabel!
   
    var img1 = UIImage(named:"")
    var img2 = UIImage(named:"")
    var Dis = ""
    var varitytitle = ""
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        //When view loads, the variable outlets above are changed to the appropriate Variety Description
        //i.e. relevant information for whatever disease changes based off the disease selected.
        self.title = varitytitle
        Image2.image = img2
        Image1.image = img1
        Discription.text = Dis
        TitleDiscription.text = varitytitle
        
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
