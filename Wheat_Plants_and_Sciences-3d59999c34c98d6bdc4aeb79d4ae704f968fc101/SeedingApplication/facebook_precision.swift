//
//  facebook_precision.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/25/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit


class facebook_precision: UIViewController {
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string:"https://www.facebook.com/precisionaglab/")
        
        webview.loadRequest(NSURLRequest(URL : url! ))
        // Do view setup here.
    }

}
