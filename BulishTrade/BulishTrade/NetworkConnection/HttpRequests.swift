//
//  HttpRequests.swift
//  BulishTrade
//
//  Created by Dennis Shar on 25/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation

class HttpRequests {
    
    let httpRequestsConstant: NetworkHttpAPIurlConst
    
    init(){
        httpRequestsConstant = NetworkHttpAPIurlConst()
    }

    func getTopMarketsData(complition: @escaping (_ result: String)->Void) {
        let url = URL(string: httpRequestsConstant.getTopMarketApiUrl())
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if let data = data {
                do {
                    let string = String(data: data, encoding: String.Encoding.utf8)
                    print(string) //JSONSerialization
                    complition("top market")
                }  catch let error as NSError {
                    print(error.localizedDescription)
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
    
    func getMostActiveData(complition: @escaping (_ result: String)->Void) {
        let url = URL(string: httpRequestsConstant.getMostActiveApiUrl())
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if let data = data {
                do {
                    let string = String(data: data, encoding: String.Encoding.utf8)
                    print(string) //JSONSerialization
                    complition("most active")
                }  catch let error as NSError {
                    print(error.localizedDescription)
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
}
