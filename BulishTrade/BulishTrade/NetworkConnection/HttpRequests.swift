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

    func getTopsData(complition: @escaping (_ result: [DataModelTops])->Void) {
        let url = URL(string: httpRequestsConstant.getTopMarketApiUrl())
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if let data = data {
                do {
                    let string = String(data: data, encoding: String.Encoding.utf8)
                    print(string) //JSONSerialization
                    
                    var topsJsonResponce:[[String:Any]] = [[String:Any]]()
                    var dataModelTopsArray:[DataModelTops] = [DataModelTops]()
                    
                    topsJsonResponce = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
                    dataModelTopsArray = self.jsonParser.parseTopsDataApiResponce(jsonToParse: topsJsonResponce)
                    
                    complition(dataModelTopsArray)
                    
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
    
    
    func getGainersData(complition: @escaping (_ result: [DataModelGainers])->Void) {
        let url = URL(string: httpRequestsConstant.getMostActiveApiUrl())
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            
            if let data = data {
                do {
                    
                    
                    let string = String(data: data, encoding: String.Encoding.utf8)
                    print(string) //JSONSerialization
                    
                    var gainersJsonResponce:[[String:Any]] = [[String:Any]]()
                    var dataModelGainersArray:[DataModelGainers] = [DataModelGainers]()
                    
                    gainersJsonResponce = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
                    dataModelGainersArray = self.jsonParser.parseGainersDataApiResponce(jsonToParse: gainersJsonResponce)
                    
                    complition(dataModelGainersArray)
                }  catch let error as NSError {
                    print(error.localizedDescription)
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
    
    func getLosersData(complition: @escaping (_ result: [DataModelLosers])->Void) {
        let url = URL(string: httpRequestsConstant.getMostActiveApiUrl())
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            
            if let data = data {
                do {
                    
                    
                    let string = String(data: data, encoding: String.Encoding.utf8)
                    print(string) //JSONSerialization
                    
                    var losersJsonResponce:[[String:Any]] = [[String:Any]]()
                    var dataModelLosersArray:[DataModelLosers] = [DataModelLosers]()
                    
                    losersJsonResponce = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
                    dataModelLosersArray = self.jsonParser.parseLosersDataApiResponce(jsonToParse: losersJsonResponce)
                    
                    complition(dataModelLosersArray)
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
