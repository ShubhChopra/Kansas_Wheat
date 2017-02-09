//
//  twitter_wheat.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/24/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

//twitter integration

import Foundation
import UIKit
import TwitterKit
class twitter_wheat: TWTRTimelineViewController {
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "@KSUWheat";
        
        let twitterURL = URL(string: "twitter://@KSUWheat")
        if UIApplication.shared.canOpenURL(twitterURL!) {
            UIApplication.shared.open(twitterURL!, options: [:], completionHandler: nil)
        }
        else {
            webview.loadRequest(URLRequest(url : URL(string: "https://twitter.com/KSUWheat")!))
        }
    }
}

