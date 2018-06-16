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
    
    var requests: HttpRequests?
    @IBOutlet weak var mostActiveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mostActiveLabel.text = "Most Active"
        
        requests = HttpRequests()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
//        requests?.getMostActiveData() { (result: [DataModelMostActive]) in
//            
//        }
    }
}
