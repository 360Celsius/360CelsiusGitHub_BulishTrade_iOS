//
//  GainersController.swift
//  BulishTrade
//
//  Created by Dennis Shar on 20/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import UIKit

class GainersController: UIViewController{
    
    var requests: HttpRequests?    
    @IBOutlet weak var gainersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gainersLabel.text = "Gainers"
        
         requests = HttpRequests()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.gainersLabel.text = "Gainers"
        requests?.getGainersData() { (result: [DataModelGainers]) in
            self.gainersLabel.text = "Gainers DONE"
        }
    }
}
