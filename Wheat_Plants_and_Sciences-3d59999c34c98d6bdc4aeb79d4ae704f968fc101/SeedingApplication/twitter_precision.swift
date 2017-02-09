//
//  twitter_precision.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/24/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//twitter integration

import Foundation
import UIKit
class twitter_precisionAg: UIViewController {
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "@KSUWheat";
        
        let twitterURL = URL(string: "twitter://user?id=2424632192")
        if UIApplication.shared.canOpenURL(twitterURL!) {
            UIApplication.shared.open(twitterURL!, options: [:], completionHandler: nil)
        }
        else {
            webview.loadRequest(URLRequest(url : URL(string: "https://twitter.com/KSUPrecisionAg")!))
        }
    }
}
  
