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
    
    @IBOutlet weak var topsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topsLabel.text = "Top Markets"
    }
}
