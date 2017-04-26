//
//  ContactUS.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class ContactUs: UIViewController , MFMailComposeViewControllerDelegate {
    @IBOutlet weak var email: UIButton!
    @IBOutlet weak var call: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     }
    
    @IBAction func callbutton(_ sender: AnyObject) {
        let phone = URL(string: "tel://785-532-0397")
        let Alert = UIAlertController(title: "Would you like to call the PrecisionAg Lab office?", message: "", preferredStyle: UIAlertControllerStyle.alert)
        Alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction) in
            UIApplication.shared.open(phone!, options: [:], completionHandler: nil)
        }))
        Alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in return}))
        present(Alert, animated: true, completion: nil)
    }
    
    
    @IBAction func emailbutton(_ sender: AnyObject) {
        
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }
        
        let toRecipents = ["Dr. Antonio \"Ray\" Asebedo <ara4747@ksu.edu>"]
        let mailVC: MFMailComposeViewController = MFMailComposeViewController()
      
        mailVC.mailComposeDelegate = self
        mailVC.setToRecipients(toRecipents)
        mailVC.setMessageBody("", isHTML: false)
            
        self.present(mailVC, animated: true, completion: nil)
        }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
         controller.dismiss(animated: true, completion: nil)
    }

}

