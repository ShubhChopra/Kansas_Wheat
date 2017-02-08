//
//  facebook_precision.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class facebook_precision: UIViewController {
    
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let facebookURL = URL(string: "fb://profile/1821513791430475")
        if UIApplication.shared.canOpenURL(facebookURL!) {
            UIApplication.shared.open(facebookURL!, options: [:], completionHandler: nil)
        }
        else {
            webview.loadRequest(URLRequest(url : URL(string: "https://www.facebook.com/precisionaglab/")!))
        }
    }
}
