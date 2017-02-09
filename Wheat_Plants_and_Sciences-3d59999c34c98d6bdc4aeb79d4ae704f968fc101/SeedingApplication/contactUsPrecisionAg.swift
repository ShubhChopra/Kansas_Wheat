//
//  contactus_precisionag.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit
import UIKit
import MessageUI
class contactus_precision: UIViewController , MFMailComposeViewControllerDelegate {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: applicationVars.applicationBackground)!)
    }
    
    
    
    @IBAction func callbutton(_ sender: AnyObject) {
        let phone = URL(string: "tel://785-532-6101")
        let Alert = UIAlertController(title: "Would you like to call the Precision Ag Lab office?", message: "", preferredStyle: UIAlertControllerStyle.alert)
        Alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction) in
            UIApplication.shared.open(phone!, options: [:], completionHandler: nil)
        }))
        Alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in return}))
        present(Alert, animated: true, completion: nil)
        
    }
    
    @IBAction func facebookbutton(_ sender: AnyObject) {
        let facebookURL = URL(string: "fb://profile/1821513791430475")
        if UIApplication.shared.canOpenURL(facebookURL!) {
            UIApplication.shared.open(facebookURL!, options: [:], completionHandler: nil)
        }
        else {
            UIApplication.shared.open(URL(string:"https://www.facebook.com/precisionaglab/")!, options: [:], completionHandler: nil)
        }
    }
    
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
            
        controller.dismiss(animated: true, completion: nil)
        }
        
    }
    
    @IBAction func twitterbutton(_ sender: AnyObject) {
        let url = URL(string: "https://twitter.com/ksuprecisionag")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

