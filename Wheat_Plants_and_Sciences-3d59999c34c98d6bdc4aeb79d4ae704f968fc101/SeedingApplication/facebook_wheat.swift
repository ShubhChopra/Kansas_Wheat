//
//  facebook_wheat.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class facebook_wheat: UIViewController {

    @IBOutlet weak var webview: UIWebView!
        override func viewDidLoad() {
        super.viewDidLoad()
            
            let url = NSURL(string:"https://www.facebook.com/kansaswheat/")
            
            webview.loadRequest(NSURLRequest(URL : url! ))  
        // Do view setup here.
    }
    
}
