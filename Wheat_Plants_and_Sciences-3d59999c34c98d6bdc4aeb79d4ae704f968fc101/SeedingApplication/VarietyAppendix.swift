//
//  VarietyAppendix.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 7/28/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit

class VarietyAppendix: UIViewController {

    @IBOutlet weak var pdfview: UIWebView!
    var path = ""
     var varitytitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = varitytitle
        let Alert = UIAlertController(title: "Alert!" , message: "Info for this variety is currently not available, you will find information for other vatieties on this page." , preferredStyle: UIAlertControllerStyle.Alert)
        
        Alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            print(" Ok ")
                    }))
            presentViewController(Alert, animated: true, completion: nil)
        path = NSBundle.mainBundle().pathForResource("Appendix",ofType: "pdf")!
        
        let url = NSURL.fileURLWithPath(path)
        self.pdfview.loadRequest(NSURLRequest (URL: url))

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
