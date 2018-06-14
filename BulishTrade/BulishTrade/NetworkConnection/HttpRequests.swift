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
    let jsonParser:JasonParser
    
    init(){
        httpRequestsConstant = NetworkHttpAPIurlConst()
        jsonParser = JasonParser()
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
    
    
    func getMostActiveData(complition: @escaping (_ result: [DataModelMostActive])->Void) {
        let url = URL(string: httpRequestsConstant.getMostActiveApiUrl())
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
        
            
            if let data = data {
                do {
                    
                    
                    let string = String(data: data, encoding: String.Encoding.utf8)
                    print(string) //JSONSerialization
                    
                    var mostActiveJsonResponce:[[String:Any]] = [[String:Any]]()
                    var dataModelMostActiveArray:[DataModelMostActive] = [DataModelMostActive]()
                    
                    mostActiveJsonResponce = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
                    dataModelMostActiveArray = self.jsonParser.parseMostActiveDataApiResponce(jsonToParse: mostActiveJsonResponce)
                    
                    complition(dataModelMostActiveArray)
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
