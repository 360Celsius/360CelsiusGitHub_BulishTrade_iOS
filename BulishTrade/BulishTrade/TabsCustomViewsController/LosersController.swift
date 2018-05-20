//
//  LosersController.swift
//  BulishTrade
//
//  Created by Dennis Shar on 20/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import UIKit

class LosersController: UIViewController{
    
    @IBOutlet weak var losersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        losersLabel.text = "Losers"
    }
}
