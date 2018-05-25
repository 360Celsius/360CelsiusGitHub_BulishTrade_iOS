//
//  NetworkHttpAPIurlConst.swift
//  BulishTrade
//
//  Created by Dennis Shar on 24/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation

class NetworkHttpAPIurlConst {
    
    private let BASIC_API_URL:String = "https://ws-api.iextrading.com/1.0";
    
    private let TOP_MARKETS_API_URL:String = "/tops";
    private let MOST_ACTIVE_API_URL:String = "/stock/market/list/mostactive";
    private let GINERS_MARKETS_API_URL:String = "/stock/market/list/gainers";
    private let LOSSERS_MARKETS_API_URL:String = "/stock/market/list/losers";

    
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
