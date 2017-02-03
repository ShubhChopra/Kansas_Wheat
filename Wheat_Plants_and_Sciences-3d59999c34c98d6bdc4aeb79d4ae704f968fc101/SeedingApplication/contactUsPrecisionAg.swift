//
//  contactus_precisionag.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit

import UIKit
import MessageUI
class contactus_precision: UIViewController , MFMailComposeViewControllerDelegate {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background2")!)
    }
    
    
    
    @IBAction func callbutton(_ sender: AnyObject) {
        let phone = URL(string: "tel://7855326101")
        UIApplication.shared.open(phone!, options: [:], completionHandler: nil)
        
    }
    
    //buttonthat opens Facebook page
    @IBAction func facebookbutton(_ sender: AnyObject) {
        let url = URL(string: "https://www.facebook.com/precisionaglab/")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    //function that opens and creates an email
    @IBAction func emailbutton(_ sender: AnyObject) {
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        
        let toRecipents = ["Dr. Antonio Asebedo <ara4747@ksu.edu>"]
        let mailVC: MFMailComposeViewController = MFMailComposeViewController()
        
        mailVC.mailComposeDelegate = self
        mailVC.setToRecipients(toRecipents)
        mailVC.setSubject("Subject for email")
        mailVC.setMessageBody("Hello", isHTML: false)
        
        present(mailVC, animated: true, completion: nil)
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            
            // Dismiss the mail compose view controller.
            controller.dismiss(animated: true, completion: nil)
        }
        
    }
    
    //button that opens twitter 
    @IBAction func twitterbutton(_ sender: AnyObject) {
        let url = URL(string: "https://twitter.com/ksuprecisionag")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

