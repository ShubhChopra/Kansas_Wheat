//
//  ContactUS.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation

import UIKit

import UIKit
import MessageUI

//this class contains all the code for the ContactUs paid for the Kansas Wheat.

class Contactus: UIViewController , MFMailComposeViewControllerDelegate {
    
    //setup for various buttons
    @IBOutlet weak var email: UIButton!
    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var Facebook: UIButton!
    
    //not sure I understand the need for an override. But that is because I don't know what an override is.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background2")!)
     }
    
    
    //button setup for the call function
    
    
    
    @IBAction func callbutton(_ sender: AnyObject) {
        
        //phone variable never used
        //let phone = "7855320397";
        UIApplication.shared.openURL(URL(string: "tel://7855320397")!)
        

    }
 
    //button setup for the facebook button
    @IBAction func facebookbutton(_ sender: AnyObject) {
        let facebookURL = URL(string: "fb://profile/213201098709632")
        if UIApplication.shared.canOpenURL(facebookURL!) {
            UIApplication.shared.open(facebookURL!, options: [:], completionHandler: nil)
        }
        else {
            UIApplication.shared.open(facebookURL!, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func emailbutton(_ sender: AnyObject) {
        let toRecipents = ["Dr. Romulo Lollato <lollato@ksu.edu>"]
         let mailVC: MFMailComposeViewController = MFMailComposeViewController()
      
            mailVC.mailComposeDelegate = self
            mailVC.setToRecipients(toRecipents)
            mailVC.setSubject("")
            mailVC.setMessageBody("Hello", isHTML: false)
            
            present(mailVC, animated: true, completion: nil)
        
    }
    @IBAction func twitterbutton(_ sender: AnyObject) {
        UIApplication.shared.openURL(URL(string: "https://twitter.com/KansasWheat?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor")!)

    }
   
}

//totally got everything from this file.
