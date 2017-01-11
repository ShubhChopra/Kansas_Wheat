//
//  VarietyAppendix.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 7/28/16.
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
