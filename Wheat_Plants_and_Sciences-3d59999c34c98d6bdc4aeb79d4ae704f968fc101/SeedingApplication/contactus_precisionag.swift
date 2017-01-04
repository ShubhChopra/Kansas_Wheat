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
        let phone = "7855320397";
        UIApplication.shared.openURL(URL(string: "tel://7855320397")!)
        
        
    }
    
    @IBAction func facebookbutton(_ sender: AnyObject) {
        UIApplication.shared.openURL(URL(string: "https://www.facebook.com/kansaswheat/")!)
    }
    @IBAction func emailbutton(_ sender: AnyObject) {
        let toRecipents = ["ara4747@ksu.edu"]
        let mailVC: MFMailComposeViewController = MFMailComposeViewController()
        
        mailVC.mailComposeDelegate = self
        mailVC.setToRecipients(toRecipents)
        mailVC.setSubject("Subject for email")
        mailVC.setMessageBody("Hello", isHTML: false)
        
        present(mailVC, animated: true, completion: nil)
        
    }
    @IBAction func twitterbutton(_ sender: AnyObject) {
        UIApplication.shared.openURL(URL(string: "https://twitter.com/ksuprecisionag")!)
        
    }
    
}
