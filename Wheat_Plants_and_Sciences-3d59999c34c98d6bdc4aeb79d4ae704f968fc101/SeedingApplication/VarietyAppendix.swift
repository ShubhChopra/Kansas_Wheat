//
//  VarietyAppendix.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 7/28/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

// Class is a pdf view of all the information that isn't in a convient format.

import UIKit

class VarietyAppendix: UIViewController {

    @IBOutlet weak var pdfview: UIWebView!
    var path = ""
     var varitytitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = varitytitle
        
        let Alert = UIAlertController(title: "Alert!" , message: "Info for this variety is currently not available, you will find information for other vatieties on this page." , preferredStyle: UIAlertControllerStyle.alert)
        
        Alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            print(" Ok ")
                    }))
            present(Alert, animated: true, completion: nil)
        path = Bundle.main.path(forResource: "Appendix",ofType: "pdf")!
        
        let url = URL(fileURLWithPath: path)
        self.pdfview.loadRequest(URLRequest (url: url))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
