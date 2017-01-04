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
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Variety(_ sender: AnyObject) {
        if let url = URL(string: "https://www.bookstore.ksre.ksu.edu/pubs/MF991.pdf") {
            UIApplication.shared.openURL(url)
        }
    }
    
    @IBAction func Dis(_ sender: AnyObject) {
        if let url = URL(string: "http://www.bookstore.ksre.ksu.edu/pubs/mf2994.pdf") {
            UIApplication.shared.openURL(url)
        }

    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

}
