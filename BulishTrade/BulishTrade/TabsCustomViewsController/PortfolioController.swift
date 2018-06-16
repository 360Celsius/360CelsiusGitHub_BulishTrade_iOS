//
//  PortfolioController.swift
//  BulishTrade
//
//  Created by Dennis Shar on 20/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import UIKit

class PortfolioController: UIViewController{
    
    var requests: HttpRequests?    
    @IBOutlet weak var portfolioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        portfolioLabel.text = "Portfoliofragment"
        
        requests = HttpRequests()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
}
