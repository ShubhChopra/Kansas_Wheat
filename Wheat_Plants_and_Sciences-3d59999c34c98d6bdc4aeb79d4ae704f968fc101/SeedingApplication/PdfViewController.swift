//
//  PdfViewController.swift
//  SeedingApplication
//
//  Created by Austin Fuller on 2/3/17.
//  Copyright © 2017 Austin Fuller. All rights reserved.
//

import Foundation
import UIKit

class PdfViewController: UIViewController {
    
    var url = URL(string: "nul")
    var viewTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "mainScreenBackground"))
        let req = NSURLRequest(url: url!)
        let webView = UIWebView(frame: CGRect(x:0,y:0,width:self.view.frame.size.width,height: self.view.frame.size.height-40)) //Adjust view area here
        webView.loadRequest(req as URLRequest)
        self.view.addSubview(webView)
        self.title = viewTitle
        webView.scalesPageToFit = true
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


