//
//  TopMarketsController.swift
//  BulishTrade
//
//  Created by Dennis Shar on 20/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import UIKit

class TopMarketsController: UIViewController{
    
    var requests: HttpRequests?    
    @IBOutlet weak var topsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topsLabel.text = "Top Markets"
        
        requests = HttpRequests()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.topsLabel.text = "Top Markets"
        requests?.getTopsData() { (result: [DataModelTops]) in
            self.topsLabel.text = "Top Markets DOME"
        }
    }
}
