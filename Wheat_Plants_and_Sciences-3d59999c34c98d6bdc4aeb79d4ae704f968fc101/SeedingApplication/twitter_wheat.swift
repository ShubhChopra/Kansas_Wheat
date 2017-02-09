//
//  twitter_wheat.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/24/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit
class twitter_wheat: UIViewController {
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "@KSUWheat";
        
        let twitterURL = URL(string: "twitter://user?id=3306121398")
        if UIApplication.shared.canOpenURL(twitterURL!) {
            UIApplication.shared.open(twitterURL!, options: [:], completionHandler: nil)
        }
        else {
            webview.loadRequest(URLRequest(url : URL(string: "https://twitter.com/KSUWheat")!))
        }
    }
}

