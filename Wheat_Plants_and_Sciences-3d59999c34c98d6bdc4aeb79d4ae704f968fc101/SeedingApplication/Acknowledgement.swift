//
//  Acknowledgement.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 8/2/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import UIKit
import Foundation


class Acknowledgement: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "mainScreenBackground"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier?.range(of:" ; ") != nil {
        let multiPartIdentifer = segue.identifier!.components(separatedBy: " ; ")
        print(multiPartIdentifer)
        let PdfVC = segue.destination as! PdfViewController
        PdfVC.url = URL(string: multiPartIdentifer[0])
        PdfVC.viewTitle = multiPartIdentifer[1]
        }
        
    }
   
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
