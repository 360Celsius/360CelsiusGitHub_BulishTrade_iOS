//
//  MostActiveController.swift
//  BulishTrade
//
//  Created by Dennis Shar on 20/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import UIKit

class MostActiveController: UIViewController{
    
    @IBOutlet weak var mostActiveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mostActiveLabel.text = "Most Active"
    }
}
