//
//  Acknowledgement.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 8/2/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit


class Acknowledgement: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "mainScreenBackground"))
        
        // Do any additional setup after loading the view.
    }
    
    
    //opens Variety Information link
    @IBAction func Variety(_ sender: AnyObject) {
        let url = URL(string: "https://www.bookstore.ksre.ksu.edu/pubs/MF991.pdf")
        let req = NSURLRequest(url: url!)
        let webView = UIWebView(frame: CGRect(x:0,y:0,width:self.view.frame.size.width,height: self.view.frame.size.height-40)) //Adjust view area here
        webView.loadRequest(req as URLRequest)
        self.view.addSubview(webView)
        }
    
    //opens Wheat Disease Information link
    @IBAction func Dis(_ sender: AnyObject) {
        let url = URL(string: "http://www.bookstore.ksre.ksu.edu/pubs/mf2994.pdf")
        let req = NSURLRequest(url: url!)
        let webView = UIWebView(frame: CGRect(x:0,y:0,width:self.view.frame.size.width,height: self.view.frame.size.height-40)) //Adjust view area here
        webView.loadRequest(req as URLRequest)
        self.view.addSubview(webView)
        }
   
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

}
