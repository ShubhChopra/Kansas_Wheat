//
//  facebook_wheat.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

// View for Facebook webpage

import UIKit

class facebook_wheat: UIViewController {

    @IBOutlet weak var webview: UIWebView!
        override func viewDidLoad() {
            super.viewDidLoad()
                
            let facebookURL = URL(string: "fb://profile/213201098709632")
            if UIApplication.shared.canOpenURL(facebookURL!) {
               UIApplication.shared.open(facebookURL!, options: [:], completionHandler: nil)
            }
            else {
                webview.loadRequest(URLRequest(url : URL(string: "https://www.facebook.com/kstate.wheat/")!))
            }
    }
}
