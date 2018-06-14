//
//  NetworkHttpAPIurlConst.swift
//  BulishTrade
//
//  Created by Dennis Shar on 24/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation

class NetworkHttpAPIurlConst {
    
    private let BASIC_API_URL:String = "https://bulishtrading.000webhostapp.com/Api/api.php?requestType=";
    
    private let TOP_MARKETS_API_URL:String = "getTops";
    private let MOST_ACTIVE_API_URL:String = "getMostActive";
    private let GINERS_MARKETS_API_URL:String = "getGainers";
    private let LOSSERS_MARKETS_API_URL:String = "getLossers";

    
    public func getTopMarketApiUrl() -> String {
         return "\(BASIC_API_URL)\(TOP_MARKETS_API_URL)"
    }
    
    public func getMostActiveApiUrl() -> String {
        return "\(BASIC_API_URL)\(MOST_ACTIVE_API_URL)"
    }
    
    public func getGeinersMarketApiUrl() -> String {
        return "\(GINERS_MARKETS_API_URL)\(GINERS_MARKETS_API_URL)"
    }
    
    public func getLosersMarkerApiUrl() -> String {
        return "\(GINERS_MARKETS_API_URL)\(LOSSERS_MARKETS_API_URL)"
    }
}
