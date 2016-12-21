//
//  twitter_wheat.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 9/24/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit
import TwitterKit
class twitter_wheat: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "KSUWheat", APIClient: client)
        
        self.title = "@KSUWheat";
    }
}
  
