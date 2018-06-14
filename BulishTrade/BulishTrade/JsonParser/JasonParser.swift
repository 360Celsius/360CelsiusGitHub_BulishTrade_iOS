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
    
    func parseTopsDataApiResponce(jsonToParse: [[String:Any]]) -> [DataModelTops] {
        
        var dataModelTopsArray:[DataModelTops] = [DataModelTops]()
        
        
        for i in 0...jsonToParse.count-1 {
            let dataModelTops:DataModelTops = DataModelTops()
            
            if  (jsonToParse[i] as NSDictionary)["symbol"] as? String != nil {
                dataModelTops.symbol = (jsonToParse[i] as NSDictionary)["symbol"] as? String
            }else{
                dataModelTops.symbol = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["companyName"] as? String != nil {
                dataModelTops.companyName = (jsonToParse[i] as NSDictionary)["companyName"] as? String
            }else{
                dataModelTops.companyName = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String != nil {
                dataModelTops.primaryExchange = (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String
            }else{
                dataModelTops.primaryExchange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["sector"] as? String != nil {
                dataModelTops.sector = (jsonToParse[i] as NSDictionary)["sector"] as? String
            }else{
                dataModelTops.sector = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String != nil {
                dataModelTops.calculationPrice = (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String
            }else{
                dataModelTops.calculationPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["open"] as? String != nil {
                dataModelTops.open = (jsonToParse[i] as NSDictionary)["open"] as? String
            }else{
                dataModelTops.open = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["openTime"] as? String != nil {
                dataModelTops.openTime = (jsonToParse[i] as NSDictionary)["openTime"] as? String
            }else{
                dataModelTops.openTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["close"] as? String != nil {
                dataModelTops.close = (jsonToParse[i] as NSDictionary)["close"] as? String
            }else{
                dataModelTops.close = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["closeTime"] as? String != nil {
                dataModelTops.closeTime = (jsonToParse[i] as NSDictionary)["closeTime"] as? String
            }else{
                dataModelTops.closeTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["high"] as? String != nil {
                dataModelTops.high = (jsonToParse[i] as NSDictionary)["high"] as? String
            }else{
                dataModelTops.high = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["low"] as? String != nil {
                dataModelTops.low = (jsonToParse[i] as NSDictionary)["low"] as? String
            }else{
                dataModelTops.low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestPrice"] as? String != nil {
                dataModelTops.latestPrice = (jsonToParse[i] as NSDictionary)["latestPrice"] as? String
            }else{
                dataModelTops.latestPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestSource"] as? String != nil {
                dataModelTops.latestSource = (jsonToParse[i] as NSDictionary)["latestSource"] as? String
            }else{
                dataModelTops.latestSource = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestTime"] as? String != nil {
                dataModelTops.latestTime = (jsonToParse[i] as NSDictionary)["latestTime"] as? String
            }else{
                dataModelTops.latestTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String != nil {
                dataModelTops.latestUpdate = (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String
            }else{
                dataModelTops.latestUpdate = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestVolume"] as? String != nil {
                dataModelTops.latestVolume = (jsonToParse[i] as NSDictionary)["latestVolume"] as? String
            }else{
                dataModelTops.latestVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String != nil {
                dataModelTops.iexRealtimePrice = (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String
            }else{
                dataModelTops.iexRealtimePrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String != nil {
                dataModelTops.iexRealtimeSize = (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String
            }else{
                dataModelTops.iexRealtimeSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String != nil {
                dataModelTops.iexLastUpdated = (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String
            }else{
                dataModelTops.iexLastUpdated = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String != nil {
                dataModelTops.delayedPrice = (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String
            }else{
                dataModelTops.delayedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String != nil {
                dataModelTops.delayedPriceTime = (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String
            }else{
                dataModelTops.delayedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String != nil {
                dataModelTops.extendedPrice = (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String
            }else{
                dataModelTops.extendedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChange"] as? String != nil {
                dataModelTops.extendedChange = (jsonToParse[i] as NSDictionary)["extendedChange"] as? String
            }else{
                dataModelTops.extendedChange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String != nil {
                dataModelTops.extendedChangePercent = (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String
            }else{
                dataModelTops.extendedChangePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String != nil {
                dataModelTops.extendedPriceTime = (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String
            }else{
                dataModelTops.extendedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["previousClose"] as? String != nil {
                dataModelTops.previousClose = (jsonToParse[i] as NSDictionary)["previousClose"] as? String
            }else{
                dataModelTops.previousClose = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["change"] as? String != nil {
                dataModelTops.change = (jsonToParse[i] as NSDictionary)["change"] as? String
            }else{
                dataModelTops.change = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["changePercent"] as? String != nil {
                dataModelTops.changePercent = (jsonToParse[i] as NSDictionary)["changePercent"] as? String
            }else{
                dataModelTops.changePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String != nil {
                dataModelTops.iexMarketPercent = (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String
            }else{
                dataModelTops.iexMarketPercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexVolume"] as? String != nil {
                dataModelTops.iexVolume = (jsonToParse[i] as NSDictionary)["iexVolume"] as? String
            }else{
                dataModelTops.iexVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String != nil {
                dataModelTops.avgTotalVolume = (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String
            }else{
                dataModelTops.avgTotalVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String != nil {
                dataModelTops.iexBidPrice = (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String
            }else{
                dataModelTops.iexBidPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String != nil {
                dataModelTops.iexBidSize = (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String
            }else{
                dataModelTops.iexBidSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String != nil {
                dataModelTops.iexAskPrice = (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String
            }else{
                dataModelTops.iexAskPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String != nil {
                dataModelTops.iexAskSize = (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String
            }else{
                dataModelTops.iexAskSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["marketCap"] as? String != nil {
                dataModelTops.marketCap = (jsonToParse[i] as NSDictionary)["marketCap"] as? String
            }else{
                dataModelTops.marketCap = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["peRatio"] as? String != nil {
                dataModelTops.peRatio = (jsonToParse[i] as NSDictionary)["peRatio"] as? String
            }else{
                dataModelTops.peRatio = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52High"] as? String != nil {
                dataModelTops.week52High = (jsonToParse[i] as NSDictionary)["week52High"] as? String
            }else{
                dataModelTops.week52High = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52Low"] as? String != nil {
                dataModelTops.week52Low = (jsonToParse[i] as NSDictionary)["week52Low"] as? String
            }else{
                dataModelTops.week52Low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["ytdChange"] as? String != nil {
                dataModelTops.ytdChange = (jsonToParse[i] as NSDictionary)["ytdChange"] as? String
            }else{
                dataModelTops.ytdChange = ""
            }
            
            dataModelTopsArray.append(dataModelTops)
        }
        
        return dataModelTopsArray
        
    }
    
    func parseGainersDataApiResponce(jsonToParse: [[String:Any]]) -> [DataModelGainers] {
        
        var dataModelGainersArray:[DataModelGainers] = [DataModelGainers]()
        
        
        for i in 0...jsonToParse.count-1 {
            let dataModelGainers:DataModelGainers = DataModelGainers()
            
            if  (jsonToParse[i] as NSDictionary)["symbol"] as? String != nil {
                dataModelGainers.symbol = (jsonToParse[i] as NSDictionary)["symbol"] as? String
            }else{
                dataModelGainers.symbol = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["companyName"] as? String != nil {
                dataModelGainers.companyName = (jsonToParse[i] as NSDictionary)["companyName"] as? String
            }else{
                dataModelGainers.companyName = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String != nil {
                dataModelGainers.primaryExchange = (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String
            }else{
                dataModelGainers.primaryExchange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["sector"] as? String != nil {
                dataModelGainers.sector = (jsonToParse[i] as NSDictionary)["sector"] as? String
            }else{
                dataModelGainers.sector = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String != nil {
                dataModelGainers.calculationPrice = (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String
            }else{
                dataModelGainers.calculationPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["open"] as? String != nil {
                dataModelGainers.open = (jsonToParse[i] as NSDictionary)["open"] as? String
            }else{
                dataModelGainers.open = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["openTime"] as? String != nil {
                dataModelGainers.openTime = (jsonToParse[i] as NSDictionary)["openTime"] as? String
            }else{
                dataModelGainers.openTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["close"] as? String != nil {
                dataModelGainers.close = (jsonToParse[i] as NSDictionary)["close"] as? String
            }else{
                dataModelGainers.close = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["closeTime"] as? String != nil {
                dataModelGainers.closeTime = (jsonToParse[i] as NSDictionary)["closeTime"] as? String
            }else{
                dataModelGainers.closeTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["high"] as? String != nil {
                dataModelGainers.high = (jsonToParse[i] as NSDictionary)["high"] as? String
            }else{
                dataModelGainers.high = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["low"] as? String != nil {
                dataModelGainers.low = (jsonToParse[i] as NSDictionary)["low"] as? String
            }else{
                dataModelGainers.low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestPrice"] as? String != nil {
                dataModelGainers.latestPrice = (jsonToParse[i] as NSDictionary)["latestPrice"] as? String
            }else{
                dataModelGainers.latestPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestSource"] as? String != nil {
                dataModelGainers.latestSource = (jsonToParse[i] as NSDictionary)["latestSource"] as? String
            }else{
                dataModelGainers.latestSource = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestTime"] as? String != nil {
                dataModelGainers.latestTime = (jsonToParse[i] as NSDictionary)["latestTime"] as? String
            }else{
                dataModelGainers.latestTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String != nil {
                dataModelGainers.latestUpdate = (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String
            }else{
                dataModelGainers.latestUpdate = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestVolume"] as? String != nil {
                dataModelGainers.latestVolume = (jsonToParse[i] as NSDictionary)["latestVolume"] as? String
            }else{
                dataModelGainers.latestVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String != nil {
                dataModelGainers.iexRealtimePrice = (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String
            }else{
                dataModelGainers.iexRealtimePrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String != nil {
                dataModelGainers.iexRealtimeSize = (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String
            }else{
                dataModelGainers.iexRealtimeSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String != nil {
                dataModelGainers.iexLastUpdated = (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String
            }else{
                dataModelGainers.iexLastUpdated = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String != nil {
                dataModelGainers.delayedPrice = (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String
            }else{
                dataModelGainers.delayedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String != nil {
                dataModelGainers.delayedPriceTime = (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String
            }else{
                dataModelGainers.delayedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String != nil {
                dataModelGainers.extendedPrice = (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String
            }else{
                dataModelGainers.extendedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChange"] as? String != nil {
                dataModelGainers.extendedChange = (jsonToParse[i] as NSDictionary)["extendedChange"] as? String
            }else{
                dataModelGainers.extendedChange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String != nil {
                dataModelGainers.extendedChangePercent = (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String
            }else{
                dataModelGainers.extendedChangePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String != nil {
                dataModelGainers.extendedPriceTime = (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String
            }else{
                dataModelGainers.extendedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["previousClose"] as? String != nil {
                dataModelGainers.previousClose = (jsonToParse[i] as NSDictionary)["previousClose"] as? String
            }else{
                dataModelGainers.previousClose = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["change"] as? String != nil {
                dataModelGainers.change = (jsonToParse[i] as NSDictionary)["change"] as? String
            }else{
                dataModelGainers.change = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["changePercent"] as? String != nil {
                dataModelGainers.changePercent = (jsonToParse[i] as NSDictionary)["changePercent"] as? String
            }else{
                dataModelGainers.changePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String != nil {
                dataModelGainers.iexMarketPercent = (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String
            }else{
                dataModelGainers.iexMarketPercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexVolume"] as? String != nil {
                dataModelGainers.iexVolume = (jsonToParse[i] as NSDictionary)["iexVolume"] as? String
            }else{
                dataModelGainers.iexVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String != nil {
                dataModelGainers.avgTotalVolume = (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String
            }else{
                dataModelGainers.avgTotalVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String != nil {
                dataModelGainers.iexBidPrice = (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String
            }else{
                dataModelGainers.iexBidPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String != nil {
                dataModelGainers.iexBidSize = (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String
            }else{
                dataModelGainers.iexBidSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String != nil {
                dataModelGainers.iexAskPrice = (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String
            }else{
                dataModelGainers.iexAskPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String != nil {
                dataModelGainers.iexAskSize = (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String
            }else{
                dataModelGainers.iexAskSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["marketCap"] as? String != nil {
                dataModelGainers.marketCap = (jsonToParse[i] as NSDictionary)["marketCap"] as? String
            }else{
                dataModelGainers.marketCap = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["peRatio"] as? String != nil {
                dataModelGainers.peRatio = (jsonToParse[i] as NSDictionary)["peRatio"] as? String
            }else{
                dataModelGainers.peRatio = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52High"] as? String != nil {
                dataModelGainers.week52High = (jsonToParse[i] as NSDictionary)["week52High"] as? String
            }else{
                dataModelGainers.week52High = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52Low"] as? String != nil {
                dataModelGainers.week52Low = (jsonToParse[i] as NSDictionary)["week52Low"] as? String
            }else{
                dataModelGainers.week52Low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["ytdChange"] as? String != nil {
                dataModelGainers.ytdChange = (jsonToParse[i] as NSDictionary)["ytdChange"] as? String
            }else{
                dataModelGainers.ytdChange = ""
            }
            
            dataModelGainersArray.append(dataModelGainers)
        }
        
        return dataModelGainersArray
        
    }
    
    func parseLosersDataApiResponce(jsonToParse: [[String:Any]]) -> [DataModelLosers] {
        
        var dataModelLosersArray:[DataModelLosers] = [DataModelLosers]()
        
        
        for i in 0...jsonToParse.count-1 {
            let dataModelLosers:DataModelLosers = DataModelLosers()
            
            if  (jsonToParse[i] as NSDictionary)["symbol"] as? String != nil {
                dataModelLosers.symbol = (jsonToParse[i] as NSDictionary)["symbol"] as? String
            }else{
                dataModelLosers.symbol = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["companyName"] as? String != nil {
                dataModelLosers.companyName = (jsonToParse[i] as NSDictionary)["companyName"] as? String
            }else{
                dataModelLosers.companyName = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String != nil {
                dataModelLosers.primaryExchange = (jsonToParse[i] as NSDictionary)["primaryExchange"] as? String
            }else{
                dataModelLosers.primaryExchange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["sector"] as? String != nil {
                dataModelLosers.sector = (jsonToParse[i] as NSDictionary)["sector"] as? String
            }else{
                dataModelLosers.sector = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String != nil {
                dataModelLosers.calculationPrice = (jsonToParse[i] as NSDictionary)["calculationPrice"] as? String
            }else{
                dataModelLosers.calculationPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["open"] as? String != nil {
                dataModelLosers.open = (jsonToParse[i] as NSDictionary)["open"] as? String
            }else{
                dataModelLosers.open = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["openTime"] as? String != nil {
                dataModelLosers.openTime = (jsonToParse[i] as NSDictionary)["openTime"] as? String
            }else{
                dataModelLosers.openTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["close"] as? String != nil {
                dataModelLosers.close = (jsonToParse[i] as NSDictionary)["close"] as? String
            }else{
                dataModelLosers.close = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["closeTime"] as? String != nil {
                dataModelLosers.closeTime = (jsonToParse[i] as NSDictionary)["closeTime"] as? String
            }else{
                dataModelLosers.closeTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["high"] as? String != nil {
                dataModelLosers.high = (jsonToParse[i] as NSDictionary)["high"] as? String
            }else{
                dataModelLosers.high = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["low"] as? String != nil {
                dataModelLosers.low = (jsonToParse[i] as NSDictionary)["low"] as? String
            }else{
                dataModelLosers.low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestPrice"] as? String != nil {
                dataModelLosers.latestPrice = (jsonToParse[i] as NSDictionary)["latestPrice"] as? String
            }else{
                dataModelLosers.latestPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestSource"] as? String != nil {
                dataModelLosers.latestSource = (jsonToParse[i] as NSDictionary)["latestSource"] as? String
            }else{
                dataModelLosers.latestSource = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestTime"] as? String != nil {
                dataModelLosers.latestTime = (jsonToParse[i] as NSDictionary)["latestTime"] as? String
            }else{
                dataModelLosers.latestTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String != nil {
                dataModelLosers.latestUpdate = (jsonToParse[i] as NSDictionary)["latestUpdate"] as? String
            }else{
                dataModelLosers.latestUpdate = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["latestVolume"] as? String != nil {
                dataModelLosers.latestVolume = (jsonToParse[i] as NSDictionary)["latestVolume"] as? String
            }else{
                dataModelLosers.latestVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String != nil {
                dataModelLosers.iexRealtimePrice = (jsonToParse[i] as NSDictionary)["iexRealtimePrice"] as? String
            }else{
                dataModelLosers.iexRealtimePrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String != nil {
                dataModelLosers.iexRealtimeSize = (jsonToParse[i] as NSDictionary)["iexRealtimeSize"] as? String
            }else{
                dataModelLosers.iexRealtimeSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String != nil {
                dataModelLosers.iexLastUpdated = (jsonToParse[i] as NSDictionary)["iexLastUpdated"] as? String
            }else{
                dataModelLosers.iexLastUpdated = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String != nil {
                dataModelLosers.delayedPrice = (jsonToParse[i] as NSDictionary)["delayedPrice"] as? String
            }else{
                dataModelLosers.delayedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String != nil {
                dataModelLosers.delayedPriceTime = (jsonToParse[i] as NSDictionary)["delayedPriceTime"] as? String
            }else{
                dataModelLosers.delayedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String != nil {
                dataModelLosers.extendedPrice = (jsonToParse[i] as NSDictionary)["extendedPrice"] as? String
            }else{
                dataModelLosers.extendedPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChange"] as? String != nil {
                dataModelLosers.extendedChange = (jsonToParse[i] as NSDictionary)["extendedChange"] as? String
            }else{
                dataModelLosers.extendedChange = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String != nil {
                dataModelLosers.extendedChangePercent = (jsonToParse[i] as NSDictionary)["extendedChangePercent"] as? String
            }else{
                dataModelLosers.extendedChangePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String != nil {
                dataModelLosers.extendedPriceTime = (jsonToParse[i] as NSDictionary)["extendedPriceTime"] as? String
            }else{
                dataModelLosers.extendedPriceTime = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["previousClose"] as? String != nil {
                dataModelLosers.previousClose = (jsonToParse[i] as NSDictionary)["previousClose"] as? String
            }else{
                dataModelLosers.previousClose = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["change"] as? String != nil {
                dataModelLosers.change = (jsonToParse[i] as NSDictionary)["change"] as? String
            }else{
                dataModelLosers.change = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["changePercent"] as? String != nil {
                dataModelLosers.changePercent = (jsonToParse[i] as NSDictionary)["changePercent"] as? String
            }else{
                dataModelLosers.changePercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String != nil {
                dataModelLosers.iexMarketPercent = (jsonToParse[i] as NSDictionary)["iexMarketPercent"] as? String
            }else{
                dataModelLosers.iexMarketPercent = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexVolume"] as? String != nil {
                dataModelLosers.iexVolume = (jsonToParse[i] as NSDictionary)["iexVolume"] as? String
            }else{
                dataModelLosers.iexVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String != nil {
                dataModelLosers.avgTotalVolume = (jsonToParse[i] as NSDictionary)["avgTotalVolume"] as? String
            }else{
                dataModelLosers.avgTotalVolume = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String != nil {
                dataModelLosers.iexBidPrice = (jsonToParse[i] as NSDictionary)["iexBidPrice"] as? String
            }else{
                dataModelLosers.iexBidPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String != nil {
                dataModelLosers.iexBidSize = (jsonToParse[i] as NSDictionary)["iexBidSize"] as? String
            }else{
                dataModelLosers.iexBidSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String != nil {
                dataModelLosers.iexAskPrice = (jsonToParse[i] as NSDictionary)["iexAskPrice"] as? String
            }else{
                dataModelLosers.iexAskPrice = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String != nil {
                dataModelLosers.iexAskSize = (jsonToParse[i] as NSDictionary)["iexAskSize"] as? String
            }else{
                dataModelLosers.iexAskSize = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["marketCap"] as? String != nil {
                dataModelLosers.marketCap = (jsonToParse[i] as NSDictionary)["marketCap"] as? String
            }else{
                dataModelLosers.marketCap = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["peRatio"] as? String != nil {
                dataModelLosers.peRatio = (jsonToParse[i] as NSDictionary)["peRatio"] as? String
            }else{
                dataModelLosers.peRatio = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52High"] as? String != nil {
                dataModelLosers.week52High = (jsonToParse[i] as NSDictionary)["week52High"] as? String
            }else{
                dataModelLosers.week52High = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["week52Low"] as? String != nil {
                dataModelLosers.week52Low = (jsonToParse[i] as NSDictionary)["week52Low"] as? String
            }else{
                dataModelLosers.week52Low = ""
            }
            
            if  (jsonToParse[i] as NSDictionary)["ytdChange"] as? String != nil {
                dataModelLosers.ytdChange = (jsonToParse[i] as NSDictionary)["ytdChange"] as? String
            }else{
                dataModelLosers.ytdChange = ""
            }
            
            dataModelLosersArray.append(dataModelLosers)
        }
        
        return dataModelLosersArray
        
    }
}
