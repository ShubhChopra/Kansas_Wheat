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
    @IBOutlet weak var email: UIButton!
    @IBOutlet weak var call: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var Facebook: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background2")!)
     }
    
    @IBAction func callbutton(_ sender: AnyObject) {
        let phone = URL(string: "tel://7855320397")
        UIApplication.shared.open(phone!, options: [:], completionHandler: nil)
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
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        
        let toRecipents = ["Dr. Romulo Lollato <lollato@ksu.edu>"]
        let mailVC: MFMailComposeViewController = MFMailComposeViewController()
      
        mailVC.mailComposeDelegate = self
        mailVC.setToRecipients(toRecipents)
        mailVC.setMessageBody("", isHTML: false)
            
        self.present(mailVC, animated: true, completion: nil)
        }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }

    @IBAction func twitterbutton(_ sender: AnyObject) {
        let url = URL(string: "https://twitter.com/KansasWheat?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}

