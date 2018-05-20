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
    
    @IBOutlet weak var gainersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gainersLabel.text = "Gainers"
    }
}
