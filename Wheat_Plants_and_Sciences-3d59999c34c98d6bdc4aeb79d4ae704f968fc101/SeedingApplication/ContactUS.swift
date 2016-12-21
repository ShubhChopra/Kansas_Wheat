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
class Contactus: UIViewController , MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var email: UIButton!
    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var Facebook: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background2")!)
     }
    
    @IBAction func callbutton(sender: AnyObject) {
        let phone = "7855320397";
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://7855320397")!)
        

    }
 
    @IBAction func facebookbutton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.facebook.com/kansaswheat/")!)
    }
    @IBAction func emailbutton(sender: AnyObject) {
        let toRecipents = ["lollato@ksu.edu"]
         let mailVC: MFMailComposeViewController = MFMailComposeViewController()
      
            mailVC.mailComposeDelegate = self
            mailVC.setToRecipients(toRecipents)
            mailVC.setSubject("Subject for email")
            mailVC.setMessageBody("Hello", isHTML: false)
            
            presentViewController(mailVC, animated: true, completion: nil)
        
    }
    @IBAction func twitterbutton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://twitter.com/KansasWheat?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor")!)

    }
   
}
