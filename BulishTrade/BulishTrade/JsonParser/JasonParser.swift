//
//  JasonParser.swift
//  BulishTrade
//
//  Created by Dennis Shar on 26/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation

class JasonParser {

    //let dataMotelTopMarkets:DataMotelTopMarkets
    
    
    init () {

    }
    
    func parseTopMarketsDataApiResponce(jsonToParse:AnyObject) -> [DataMotelTopMarkets] {
        
        var dataModelTopMarketsArray = [DataMotelTopMarkets]()
        var dataModelTopMarkets:DataMotelTopMarkets = DataMotelTopMarkets()
        
        
        return dataModelTopMarketsArray
        
    }

    func parseMostActiveDataApiResponce(jsonToParse: [[String:Any]]) -> [DataModelMostActive] {
        
        var dataModelMostActiveArray:[DataModelMostActive] = [DataModelMostActive]()
        
        
        for i in 0...jsonToParse.count-1 {
            let dataModelMostActive:DataModelMostActive = DataModelMostActive()
            
            if  (jsonToParse[i] as NSDictionary)["symbol"] as? String != nil {
                dataModelMostActive.symbol = (jsonToParse[i] as NSDictionary)["symbol"] as? String
            }else{
                dataModelMostActive.symbol = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["companyName"] as? String != nil {
                dataModelMostActive.companyName = (jsonToParse[i] as NSDictionary)["companyName"] as? String
            }else{
                dataModelMostActive.companyName = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String != nil {
                dataModelMostActive.primaryExchange = (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String
            }else{
                dataModelMostActive.primaryExchange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["sector"] as? String != nil {
                dataModelMostActive.sector = (jsonToParse[i] as NSDictionary)["sector"] as? String
            }else{
                dataModelMostActive.sector = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String != nil {
                dataModelMostActive.calculationPrice = (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String
            }else{
                dataModelMostActive.calculationPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["open"] as? String != nil {
                dataModelMostActive.open = (jsonToParse[i] as NSDictionary)["open"] as? String
            }else{
                dataModelMostActive.open = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["openTime"] as? String != nil {
                dataModelMostActive.openTime = (jsonToParse[i] as NSDictionary)["openTime"] as? String
            }else{
                dataModelMostActive.openTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["close"] as? String != nil {
                dataModelMostActive.close = (jsonToParse[i] as NSDictionary)["close"] as? String
            }else{
                dataModelMostActive.close = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["closeTime"] as? String != nil {
                dataModelMostActive.closeTime = (jsonToParse[i] as NSDictionary)["closeTime"] as? String
            }else{
                dataModelMostActive.closeTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["high"] as? String != nil {
                dataModelMostActive.high = (jsonToParse[i] as NSDictionary)["high"] as? String
            }else{
                dataModelMostActive.high = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["low"] as? String != nil {
                dataModelMostActive.low = (jsonToParse[i] as NSDictionary)["low"] as? String
            }else{
                dataModelMostActive.low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestPrice"] as? String != nil {
                dataModelMostActive.latestPrice = (jsonToParse[i] as NSDictionary)["latestPrice"] as? String
            }else{
                dataModelMostActive.latestPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestSource"] as? String != nil {
                dataModelMostActive.latestSource = (jsonToParse[i] as NSDictionary)["latestSource"] as? String
            }else{
                dataModelMostActive.latestSource = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestTime"] as? String != nil {
                dataModelMostActive.latestTime = (jsonToParse[i] as NSDictionary)["latestTime"] as? String
            }else{
                dataModelMostActive.latestTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String != nil {
                dataModelMostActive.latestUpdate = (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String
            }else{
                dataModelMostActive.latestUpdate = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestVolume"] as? String != nil {
                dataModelMostActive.latestVolume = (jsonToParse[i] as NSDictionary)["latestVolume"] as? String
            }else{
                dataModelMostActive.latestVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String != nil {
                dataModelMostActive.iexRealtimePrice = (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String
            }else{
                dataModelMostActive.iexRealtimePrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String != nil {
                dataModelMostActive.iexRealtimeSize = (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String
            }else{
                dataModelMostActive.iexRealtimeSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String != nil {
                dataModelMostActive.iexLastUpdated = (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String
            }else{
                dataModelMostActive.iexLastUpdated = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String != nil {
                dataModelMostActive.delayedPrice = (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String
            }else{
                dataModelMostActive.delayedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String != nil {
                dataModelMostActive.delayedPriceTime = (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String
            }else{
                dataModelMostActive.delayedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String != nil {
                dataModelMostActive.extendedPrice = (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String
            }else{
                dataModelMostActive.extendedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChange"] as? String != nil {
                dataModelMostActive.extendedChange = (jsonToParse[i] as NSDictionary)["extendedChange"] as? String
            }else{
                dataModelMostActive.extendedChange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String != nil {
                dataModelMostActive.extendedChangePercent = (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String
            }else{
                dataModelMostActive.extendedChangePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String != nil {
                dataModelMostActive.extendedPriceTime = (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String
            }else{
                dataModelMostActive.extendedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["previousClose"] as? String != nil {
                dataModelMostActive.previousClose = (jsonToParse[i] as NSDictionary)["previousClose"] as? String
            }else{
                dataModelMostActive.previousClose = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["change"] as? String != nil {
                dataModelMostActive.change = (jsonToParse[i] as NSDictionary)["change"] as? String
            }else{
                dataModelMostActive.change = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["changePercent"] as? String != nil {
                dataModelMostActive.changePercent = (jsonToParse[i] as NSDictionary)["changePercent"] as? String
            }else{
                dataModelMostActive.changePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String != nil {
                dataModelMostActive.iexMarketPercent = (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String
            }else{
                dataModelMostActive.iexMarketPercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexVolume"] as? String != nil {
                dataModelMostActive.iexVolume = (jsonToParse[i] as NSDictionary)["iexVolume"] as? String
            }else{
                dataModelMostActive.iexVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String != nil {
                dataModelMostActive.avgTotalVolume = (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String
            }else{
                dataModelMostActive.avgTotalVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String != nil {
                dataModelMostActive.iexBidPrice = (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String
            }else{
                dataModelMostActive.iexBidPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String != nil {
                dataModelMostActive.iexBidSize = (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String
            }else{
                dataModelMostActive.iexBidSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String != nil {
                dataModelMostActive.iexAskPrice = (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String
            }else{
                dataModelMostActive.iexAskPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String != nil {
                dataModelMostActive.iexAskSize = (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String
            }else{
                dataModelMostActive.iexAskSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["marketCap"] as? String != nil {
                dataModelMostActive.marketCap = (jsonToParse[i] as NSDictionary)["marketCap"] as? String
            }else{
                dataModelMostActive.marketCap = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["peRatio"] as? String != nil {
                dataModelMostActive.peRatio = (jsonToParse[i] as NSDictionary)["peRatio"] as? String
            }else{
                dataModelMostActive.peRatio = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52High"] as? String != nil {
                dataModelMostActive.week52High = (jsonToParse[i] as NSDictionary)["week52High"] as? String
            }else{
                dataModelMostActive.week52High = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52Low"] as? String != nil {
                dataModelMostActive.week52Low = (jsonToParse[i] as NSDictionary)["week52Low"] as? String
            }else{
                dataModelMostActive.week52Low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["ytdChange"] as? String != nil {
                dataModelMostActive.ytdChange = (jsonToParse[i] as NSDictionary)["ytdChange"] as? String
            }else{
                dataModelMostActive.ytdChange = ""
            }
            
            dataModelMostActiveArray.append(dataModelMostActive)
        }
        
        return dataModelMostActiveArray
        
    }
}
