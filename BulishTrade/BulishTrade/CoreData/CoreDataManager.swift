//
//  CoreDataManager.swift
//  BulishTrade
//
//  Created by Dennis Shar on 26/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    // singelton
    static let coreDataManagerInstance = CoreDataManager()

    var persistentContainer: NSPersistentContainer
    var context: NSManagedObjectContext?
    

    private init() {

        persistentContainer = {

            let container = NSPersistentContainer(name: "BulishTradeData")
            container.loadPersistentStores(completionHandler: { (storeDescription, error) in
                if let error = error {

                    fatalError("Unresolved error \(error)")
                }
            })
            return container
        }()

        context = persistentContainer.viewContext

    }
    
    
    ///////////////////////// MostActiveDataTable //////////////////////////////////////

    func addDataToMostActiveDataTable(dataModelMostActiveArray: [DataModelMostActive] ) -> Void {
        
        let mostActiveEntity = NSEntityDescription.entity(forEntityName: "MostAciveDataTable", in: context!)!
        
        for i in 0...dataModelMostActiveArray.count-1 {
            let mostActiveData = NSManagedObject(entity: mostActiveEntity, insertInto: context)
            
            mostActiveData.setValue(dataModelMostActiveArray[i].symbol, forKey: "symbol")
            mostActiveData.setValue(dataModelMostActiveArray[i].companyName, forKey: "companyName")
            mostActiveData.setValue(dataModelMostActiveArray[i].primaryExchange, forKey: "primaryExchange")
            mostActiveData.setValue(dataModelMostActiveArray[i].sector, forKey: "sector")
            mostActiveData.setValue(dataModelMostActiveArray[i].calculationPrice, forKey: "calculationPrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].open, forKey: "open")
            mostActiveData.setValue(dataModelMostActiveArray[i].openTime, forKey: "openTime")
            mostActiveData.setValue(dataModelMostActiveArray[i].close, forKey: "close")
            mostActiveData.setValue(dataModelMostActiveArray[i].closeTime, forKey: "closeTime")
            mostActiveData.setValue(dataModelMostActiveArray[i].high, forKey: "high")
            mostActiveData.setValue(dataModelMostActiveArray[i].low, forKey: "low")
            mostActiveData.setValue(dataModelMostActiveArray[i].latestPrice, forKey: "latestPrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].latestSource, forKey: "latestSource")
            mostActiveData.setValue(dataModelMostActiveArray[i].latestTime, forKey: "latestTime")
            mostActiveData.setValue(dataModelMostActiveArray[i].latestUpdate, forKey: "latestUpdate")
            mostActiveData.setValue(dataModelMostActiveArray[i].latestVolume, forKey: "latestVolume")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexRealtimePrice, forKey: "iexRealtimePrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexRealtimeSize, forKey: "iexRealtimeSize")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexLastUpdated, forKey: "iexLastUpdated")
            mostActiveData.setValue(dataModelMostActiveArray[i].delayedPrice, forKey: "delayedPrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].delayedPriceTime, forKey: "delayedPriceTime")
            mostActiveData.setValue(dataModelMostActiveArray[i].extendedPrice, forKey: "extendedPrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].extendedChange, forKey: "extendedChange")
            mostActiveData.setValue(dataModelMostActiveArray[i].extendedChangePercent, forKey: "extendedChangePercent")
            mostActiveData.setValue(dataModelMostActiveArray[i].extendedPriceTime, forKey: "extendedPriceTime")
            mostActiveData.setValue(dataModelMostActiveArray[i].previousClose, forKey: "previousClose")
            mostActiveData.setValue(dataModelMostActiveArray[i].change, forKey: "change")
            mostActiveData.setValue(dataModelMostActiveArray[i].changePercent, forKey: "changePercent")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexMarketPercent, forKey: "iexMarketPercent")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexVolume, forKey: "iexVolume")
            mostActiveData.setValue(dataModelMostActiveArray[i].avgTotalVolume, forKey: "avgTotalVolume")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexBidPrice, forKey: "iexBidPrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexBidSize, forKey: "iexBidSize")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexAskPrice, forKey: "iexAskPrice")
            mostActiveData.setValue(dataModelMostActiveArray[i].iexAskSize, forKey: "iexAskSize")
            mostActiveData.setValue(dataModelMostActiveArray[i].marketCap, forKey: "marketCap")
            mostActiveData.setValue(dataModelMostActiveArray[i].peRatio, forKey: "peRatio")
            mostActiveData.setValue(dataModelMostActiveArray[i].week52High, forKey: "week52High")
            mostActiveData.setValue(dataModelMostActiveArray[i].week52Low, forKey: "week52Low")
            mostActiveData.setValue(dataModelMostActiveArray[i].ytdChange, forKey: "ytdChange")

            do {
                try context?.save()
            } catch {
                print("Failed saving")
            }
            
        }
    }
    
    func deleteFromMostActiveDataTable() ->Void {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "MostAciveDataTable")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try context?.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                context?.delete(item)
            }
            
            // Save Changes
            try context?.save()
            
        } catch {
            // Error Handling
            // ...
        }
    }
    
    func getDataFromMostActiveDataTable() -> [DataModelMostActive] {
        var dataModelMostActiveArray:[DataModelMostActive] = [DataModelMostActive]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "MostAciveDataTable")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context?.fetch(request)
            for data in result as! [NSManagedObject] {
                
                let dataModelMostActiveObject: DataModelMostActive = DataModelMostActive()
                
                
                dataModelMostActiveObject.symbol = data.value(forKey: "symbol") as? String
                dataModelMostActiveObject.companyName = data.value(forKey: "companyName") as? String
                dataModelMostActiveObject.primaryExchange = data.value(forKey: "primaryExchange") as? String
                dataModelMostActiveObject.sector = data.value(forKey: "sector") as? String
                dataModelMostActiveObject.calculationPrice = data.value(forKey: "calculationPrice") as? String
                dataModelMostActiveObject.open = data.value(forKey: "open") as? String
                dataModelMostActiveObject.openTime = data.value(forKey: "openTime") as? String
                dataModelMostActiveObject.close = data.value(forKey: "close") as? String
                dataModelMostActiveObject.closeTime = data.value(forKey: "closeTime") as? String
                dataModelMostActiveObject.high = data.value(forKey: "high") as? String
                dataModelMostActiveObject.low = data.value(forKey: "low") as? String
                dataModelMostActiveObject.latestPrice = data.value(forKey: "latestPrice") as? String
                dataModelMostActiveObject.latestSource = data.value(forKey: "latestSource") as? String
                dataModelMostActiveObject.latestTime = data.value(forKey: "latestTime") as? String
                dataModelMostActiveObject.latestUpdate = data.value(forKey: "latestUpdate") as? String
                dataModelMostActiveObject.latestVolume = data.value(forKey: "latestVolume") as? String
                dataModelMostActiveObject.iexRealtimePrice = data.value(forKey: "iexRealtimePrice") as? String
                dataModelMostActiveObject.iexRealtimeSize = data.value(forKey: "iexRealtimeSize") as? String
                dataModelMostActiveObject.iexLastUpdated = data.value(forKey: "iexLastUpdated") as? String
                dataModelMostActiveObject.delayedPrice = data.value(forKey: "delayedPrice") as? String
                dataModelMostActiveObject.delayedPriceTime = data.value(forKey: "delayedPriceTime") as? String
                dataModelMostActiveObject.extendedPrice = data.value(forKey: "extendedPrice") as? String
                dataModelMostActiveObject.extendedChange = data.value(forKey: "extendedChange") as? String
                dataModelMostActiveObject.extendedChangePercent = data.value(forKey: "extendedChangePercent") as? String
                dataModelMostActiveObject.extendedPriceTime = data.value(forKey: "extendedPriceTime") as? String
                dataModelMostActiveObject.previousClose = data.value(forKey: "previousClose") as? String
                dataModelMostActiveObject.change = data.value(forKey: "change") as? String
                dataModelMostActiveObject.changePercent = data.value(forKey: "changePercent") as? String
                dataModelMostActiveObject.iexMarketPercent = data.value(forKey: "iexMarketPercent") as? String
                dataModelMostActiveObject.iexVolume = data.value(forKey: "iexVolume") as? String
                dataModelMostActiveObject.avgTotalVolume = data.value(forKey: "avgTotalVolume") as? String
                dataModelMostActiveObject.iexBidPrice = data.value(forKey: "iexBidPrice") as? String
                dataModelMostActiveObject.iexBidSize = data.value(forKey: "iexBidSize") as? String
                dataModelMostActiveObject.iexAskPrice = data.value(forKey: "iexAskPrice") as? String
                dataModelMostActiveObject.iexAskSize = data.value(forKey: "iexAskSize") as? String
                dataModelMostActiveObject.marketCap = data.value(forKey: "marketCap") as? String
                dataModelMostActiveObject.peRatio = data.value(forKey: "peRatio") as? String
                dataModelMostActiveObject.week52High = data.value(forKey: "week52High") as? String
                dataModelMostActiveObject.week52Low = data.value(forKey: "week52Low") as? String
                dataModelMostActiveObject.ytdChange = data.value(forKey: "ytdChange") as? String

                dataModelMostActiveArray.append(dataModelMostActiveObject)
                
            }
            
            
            
        } catch {
            print("Failed")
        }
        
        return dataModelMostActiveArray
    }
    
    ///////////////////////// TopsTable //////////////////////////////////////
    
    func addDataToTopsDataTable(dataModelTopsArray: [DataModelTops] ) -> Void {
        
        let topsEntity = NSEntityDescription.entity(forEntityName: "TopsDataTable", in: context!)!
        
        for i in 0...dataModelTopsArray.count-1 {
            let topsData = NSManagedObject(entity: topsEntity, insertInto: context)
            
            topsData.setValue(dataModelTopsArray[i].symbol, forKey: "symbol")
            topsData.setValue(dataModelTopsArray[i].companyName, forKey: "companyName")
            topsData.setValue(dataModelTopsArray[i].primaryExchange, forKey: "primaryExchange")
            topsData.setValue(dataModelTopsArray[i].sector, forKey: "sector")
            topsData.setValue(dataModelTopsArray[i].calculationPrice, forKey: "calculationPrice")
            topsData.setValue(dataModelTopsArray[i].open, forKey: "open")
            topsData.setValue(dataModelTopsArray[i].openTime, forKey: "openTime")
            topsData.setValue(dataModelTopsArray[i].close, forKey: "close")
            topsData.setValue(dataModelTopsArray[i].closeTime, forKey: "closeTime")
            topsData.setValue(dataModelTopsArray[i].high, forKey: "high")
            topsData.setValue(dataModelTopsArray[i].low, forKey: "low")
            topsData.setValue(dataModelTopsArray[i].latestPrice, forKey: "latestPrice")
            topsData.setValue(dataModelTopsArray[i].latestSource, forKey: "latestSource")
            topsData.setValue(dataModelTopsArray[i].latestTime, forKey: "latestTime")
            topsData.setValue(dataModelTopsArray[i].latestUpdate, forKey: "latestUpdate")
            topsData.setValue(dataModelTopsArray[i].latestVolume, forKey: "latestVolume")
            topsData.setValue(dataModelTopsArray[i].iexRealtimePrice, forKey: "iexRealtimePrice")
            topsData.setValue(dataModelTopsArray[i].iexRealtimeSize, forKey: "iexRealtimeSize")
            topsData.setValue(dataModelTopsArray[i].iexLastUpdated, forKey: "iexLastUpdated")
            topsData.setValue(dataModelTopsArray[i].delayedPrice, forKey: "delayedPrice")
            topsData.setValue(dataModelTopsArray[i].delayedPriceTime, forKey: "delayedPriceTime")
            topsData.setValue(dataModelTopsArray[i].extendedPrice, forKey: "extendedPrice")
            topsData.setValue(dataModelTopsArray[i].extendedChange, forKey: "extendedChange")
            topsData.setValue(dataModelTopsArray[i].extendedChangePercent, forKey: "extendedChangePercent")
            topsData.setValue(dataModelTopsArray[i].extendedPriceTime, forKey: "extendedPriceTime")
            topsData.setValue(dataModelTopsArray[i].previousClose, forKey: "previousClose")
            topsData.setValue(dataModelTopsArray[i].change, forKey: "change")
            topsData.setValue(dataModelTopsArray[i].changePercent, forKey: "changePercent")
            topsData.setValue(dataModelTopsArray[i].iexMarketPercent, forKey: "iexMarketPercent")
            topsData.setValue(dataModelTopsArray[i].iexVolume, forKey: "iexVolume")
            topsData.setValue(dataModelTopsArray[i].avgTotalVolume, forKey: "avgTotalVolume")
            topsData.setValue(dataModelTopsArray[i].iexBidPrice, forKey: "iexBidPrice")
            topsData.setValue(dataModelTopsArray[i].iexBidSize, forKey: "iexBidSize")
            topsData.setValue(dataModelTopsArray[i].iexAskPrice, forKey: "iexAskPrice")
            topsData.setValue(dataModelTopsArray[i].iexAskSize, forKey: "iexAskSize")
            topsData.setValue(dataModelTopsArray[i].marketCap, forKey: "marketCap")
            topsData.setValue(dataModelTopsArray[i].peRatio, forKey: "peRatio")
            topsData.setValue(dataModelTopsArray[i].week52High, forKey: "week52High")
            topsData.setValue(dataModelTopsArray[i].week52Low, forKey: "week52Low")
            topsData.setValue(dataModelTopsArray[i].ytdChange, forKey: "ytdChange")
            
            do {
                try context?.save()
            } catch {
                print("Failed saving")
            }
            
        }
    }
    
    func deleteFromTopsDataTable() ->Void {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TopsDataTable")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try context?.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                context?.delete(item)
            }
            
            // Save Changes
            try context?.save()
            
        } catch {
            // Error Handling
            // ...
        }
    }
    
    func getDataFromTopsDataTable() -> [DataModelTops] {
        var dataModelTopsArray:[DataModelTops] = [DataModelTops]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "TopsDataTable")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context?.fetch(request)
            for data in result as! [NSManagedObject] {
                
                let dataModelTopsObject: DataModelTops = DataModelTops()
                
                
                dataModelTopsObject.symbol = data.value(forKey: "symbol") as? String
                dataModelTopsObject.companyName = data.value(forKey: "companyName") as? String
                dataModelTopsObject.primaryExchange = data.value(forKey: "primaryExchange") as? String
                dataModelTopsObject.sector = data.value(forKey: "sector") as? String
                dataModelTopsObject.calculationPrice = data.value(forKey: "calculationPrice") as? String
                dataModelTopsObject.open = data.value(forKey: "open") as? String
                dataModelTopsObject.openTime = data.value(forKey: "openTime") as? String
                dataModelTopsObject.close = data.value(forKey: "close") as? String
                dataModelTopsObject.closeTime = data.value(forKey: "closeTime") as? String
                dataModelTopsObject.high = data.value(forKey: "high") as? String
                dataModelTopsObject.low = data.value(forKey: "low") as? String
                dataModelTopsObject.latestPrice = data.value(forKey: "latestPrice") as? String
                dataModelTopsObject.latestSource = data.value(forKey: "latestSource") as? String
                dataModelTopsObject.latestTime = data.value(forKey: "latestTime") as? String
                dataModelTopsObject.latestUpdate = data.value(forKey: "latestUpdate") as? String
                dataModelTopsObject.latestVolume = data.value(forKey: "latestVolume") as? String
                dataModelTopsObject.iexRealtimePrice = data.value(forKey: "iexRealtimePrice") as? String
                dataModelTopsObject.iexRealtimeSize = data.value(forKey: "iexRealtimeSize") as? String
                dataModelTopsObject.iexLastUpdated = data.value(forKey: "iexLastUpdated") as? String
                dataModelTopsObject.delayedPrice = data.value(forKey: "delayedPrice") as? String
                dataModelTopsObject.delayedPriceTime = data.value(forKey: "delayedPriceTime") as? String
                dataModelTopsObject.extendedPrice = data.value(forKey: "extendedPrice") as? String
                dataModelTopsObject.extendedChange = data.value(forKey: "extendedChange") as? String
                dataModelTopsObject.extendedChangePercent = data.value(forKey: "extendedChangePercent") as? String
                dataModelTopsObject.extendedPriceTime = data.value(forKey: "extendedPriceTime") as? String
                dataModelTopsObject.previousClose = data.value(forKey: "previousClose") as? String
                dataModelTopsObject.change = data.value(forKey: "change") as? String
                dataModelTopsObject.changePercent = data.value(forKey: "changePercent") as? String
                dataModelTopsObject.iexMarketPercent = data.value(forKey: "iexMarketPercent") as? String
                dataModelTopsObject.iexVolume = data.value(forKey: "iexVolume") as? String
                dataModelTopsObject.avgTotalVolume = data.value(forKey: "avgTotalVolume") as? String
                dataModelTopsObject.iexBidPrice = data.value(forKey: "iexBidPrice") as? String
                dataModelTopsObject.iexBidSize = data.value(forKey: "iexBidSize") as? String
                dataModelTopsObject.iexAskPrice = data.value(forKey: "iexAskPrice") as? String
                dataModelTopsObject.iexAskSize = data.value(forKey: "iexAskSize") as? String
                dataModelTopsObject.marketCap = data.value(forKey: "marketCap") as? String
                dataModelTopsObject.peRatio = data.value(forKey: "peRatio") as? String
                dataModelTopsObject.week52High = data.value(forKey: "week52High") as? String
                dataModelTopsObject.week52Low = data.value(forKey: "week52Low") as? String
                dataModelTopsObject.ytdChange = data.value(forKey: "ytdChange") as? String
                
                dataModelTopsArray.append(dataModelTopsObject)
                
            }
            
            
            
        } catch {
            print("Failed")
        }
        
        return dataModelTopsArray
    }
    
    ///////////////////////// GainersTable //////////////////////////////////////
    
    func addDataToGainersDataTable(dataModelGainersArray: [DataModelGainers] ) -> Void {
        
        let gainersEntity = NSEntityDescription.entity(forEntityName: "GainersDataTable", in: context!)!
        
        for i in 0...dataModelGainersArray.count-1 {
            let gainersData = NSManagedObject(entity: gainersEntity, insertInto: context)
            
            gainersData.setValue(dataModelGainersArray[i].symbol, forKey: "symbol")
            gainersData.setValue(dataModelGainersArray[i].companyName, forKey: "companyName")
            gainersData.setValue(dataModelGainersArray[i].primaryExchange, forKey: "primaryExchange")
            gainersData.setValue(dataModelGainersArray[i].sector, forKey: "sector")
            gainersData.setValue(dataModelGainersArray[i].calculationPrice, forKey: "calculationPrice")
            gainersData.setValue(dataModelGainersArray[i].open, forKey: "open")
            gainersData.setValue(dataModelGainersArray[i].openTime, forKey: "openTime")
            gainersData.setValue(dataModelGainersArray[i].close, forKey: "close")
            gainersData.setValue(dataModelGainersArray[i].closeTime, forKey: "closeTime")
            gainersData.setValue(dataModelGainersArray[i].high, forKey: "high")
            gainersData.setValue(dataModelGainersArray[i].low, forKey: "low")
            gainersData.setValue(dataModelGainersArray[i].latestPrice, forKey: "latestPrice")
            gainersData.setValue(dataModelGainersArray[i].latestSource, forKey: "latestSource")
            gainersData.setValue(dataModelGainersArray[i].latestTime, forKey: "latestTime")
            gainersData.setValue(dataModelGainersArray[i].latestUpdate, forKey: "latestUpdate")
            gainersData.setValue(dataModelGainersArray[i].latestVolume, forKey: "latestVolume")
            gainersData.setValue(dataModelGainersArray[i].iexRealtimePrice, forKey: "iexRealtimePrice")
            gainersData.setValue(dataModelGainersArray[i].iexRealtimeSize, forKey: "iexRealtimeSize")
            gainersData.setValue(dataModelGainersArray[i].iexLastUpdated, forKey: "iexLastUpdated")
            gainersData.setValue(dataModelGainersArray[i].delayedPrice, forKey: "delayedPrice")
            gainersData.setValue(dataModelGainersArray[i].delayedPriceTime, forKey: "delayedPriceTime")
            gainersData.setValue(dataModelGainersArray[i].extendedPrice, forKey: "extendedPrice")
            gainersData.setValue(dataModelGainersArray[i].extendedChange, forKey: "extendedChange")
            gainersData.setValue(dataModelGainersArray[i].extendedChangePercent, forKey: "extendedChangePercent")
            gainersData.setValue(dataModelGainersArray[i].extendedPriceTime, forKey: "extendedPriceTime")
            gainersData.setValue(dataModelGainersArray[i].previousClose, forKey: "previousClose")
            gainersData.setValue(dataModelGainersArray[i].change, forKey: "change")
            gainersData.setValue(dataModelGainersArray[i].changePercent, forKey: "changePercent")
            gainersData.setValue(dataModelGainersArray[i].iexMarketPercent, forKey: "iexMarketPercent")
            gainersData.setValue(dataModelGainersArray[i].iexVolume, forKey: "iexVolume")
            gainersData.setValue(dataModelGainersArray[i].avgTotalVolume, forKey: "avgTotalVolume")
            gainersData.setValue(dataModelGainersArray[i].iexBidPrice, forKey: "iexBidPrice")
            gainersData.setValue(dataModelGainersArray[i].iexBidSize, forKey: "iexBidSize")
            gainersData.setValue(dataModelGainersArray[i].iexAskPrice, forKey: "iexAskPrice")
            gainersData.setValue(dataModelGainersArray[i].iexAskSize, forKey: "iexAskSize")
            gainersData.setValue(dataModelGainersArray[i].marketCap, forKey: "marketCap")
            gainersData.setValue(dataModelGainersArray[i].peRatio, forKey: "peRatio")
            gainersData.setValue(dataModelGainersArray[i].week52High, forKey: "week52High")
            gainersData.setValue(dataModelGainersArray[i].week52Low, forKey: "week52Low")
            gainersData.setValue(dataModelGainersArray[i].ytdChange, forKey: "ytdChange")
            
            do {
                try context?.save()
            } catch {
                print("Failed saving")
            }
            
        }
    }
    
    func deleteFromGainersDataTable() ->Void {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GainersDataTable")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try context?.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                context?.delete(item)
            }
            
            // Save Changes
            try context?.save()
            
        } catch {
            // Error Handling
            // ...
        }
    }
    
    func getDataFromGainersDataTable() -> [DataModelGainers] {
        var dataModelGainersArray:[DataModelGainers] = [DataModelGainers]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "GainersDataTable")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context?.fetch(request)
            for data in result as! [NSManagedObject] {
                
                let dataModelGainersObject: DataModelGainers = DataModelGainers()
                
                
                dataModelGainersObject.symbol = data.value(forKey: "symbol") as? String
                dataModelGainersObject.companyName = data.value(forKey: "companyName") as? String
                dataModelGainersObject.primaryExchange = data.value(forKey: "primaryExchange") as? String
                dataModelGainersObject.sector = data.value(forKey: "sector") as? String
                dataModelGainersObject.calculationPrice = data.value(forKey: "calculationPrice") as? String
                dataModelGainersObject.open = data.value(forKey: "open") as? String
                dataModelGainersObject.openTime = data.value(forKey: "openTime") as? String
                dataModelGainersObject.close = data.value(forKey: "close") as? String
                dataModelGainersObject.closeTime = data.value(forKey: "closeTime") as? String
                dataModelGainersObject.high = data.value(forKey: "high") as? String
                dataModelGainersObject.low = data.value(forKey: "low") as? String
                dataModelGainersObject.latestPrice = data.value(forKey: "latestPrice") as? String
                dataModelGainersObject.latestSource = data.value(forKey: "latestSource") as? String
                dataModelGainersObject.latestTime = data.value(forKey: "latestTime") as? String
                dataModelGainersObject.latestUpdate = data.value(forKey: "latestUpdate") as? String
                dataModelGainersObject.latestVolume = data.value(forKey: "latestVolume") as? String
                dataModelGainersObject.iexRealtimePrice = data.value(forKey: "iexRealtimePrice") as? String
                dataModelGainersObject.iexRealtimeSize = data.value(forKey: "iexRealtimeSize") as? String
                dataModelGainersObject.iexLastUpdated = data.value(forKey: "iexLastUpdated") as? String
                dataModelGainersObject.delayedPrice = data.value(forKey: "delayedPrice") as? String
                dataModelGainersObject.delayedPriceTime = data.value(forKey: "delayedPriceTime") as? String
                dataModelGainersObject.extendedPrice = data.value(forKey: "extendedPrice") as? String
                dataModelGainersObject.extendedChange = data.value(forKey: "extendedChange") as? String
                dataModelGainersObject.extendedChangePercent = data.value(forKey: "extendedChangePercent") as? String
                dataModelGainersObject.extendedPriceTime = data.value(forKey: "extendedPriceTime") as? String
                dataModelGainersObject.previousClose = data.value(forKey: "previousClose") as? String
                dataModelGainersObject.change = data.value(forKey: "change") as? String
                dataModelGainersObject.changePercent = data.value(forKey: "changePercent") as? String
                dataModelGainersObject.iexMarketPercent = data.value(forKey: "iexMarketPercent") as? String
                dataModelGainersObject.iexVolume = data.value(forKey: "iexVolume") as? String
                dataModelGainersObject.avgTotalVolume = data.value(forKey: "avgTotalVolume") as? String
                dataModelGainersObject.iexBidPrice = data.value(forKey: "iexBidPrice") as? String
                dataModelGainersObject.iexBidSize = data.value(forKey: "iexBidSize") as? String
                dataModelGainersObject.iexAskPrice = data.value(forKey: "iexAskPrice") as? String
                dataModelGainersObject.iexAskSize = data.value(forKey: "iexAskSize") as? String
                dataModelGainersObject.marketCap = data.value(forKey: "marketCap") as? String
                dataModelGainersObject.peRatio = data.value(forKey: "peRatio") as? String
                dataModelGainersObject.week52High = data.value(forKey: "week52High") as? String
                dataModelGainersObject.week52Low = data.value(forKey: "week52Low") as? String
                dataModelGainersObject.ytdChange = data.value(forKey: "ytdChange") as? String
                
                dataModelGainersArray.append(dataModelGainersObject)
                
            }
            
            
            
        } catch {
            print("Failed")
        }
        
        return dataModelGainersArray
    }
    
    ///////////////////////// LosersTable //////////////////////////////////////
    
    func addDataToLosersDataTable(dataModelLosersArray: [DataModelLosers] ) -> Void {
        
        let losersEntity = NSEntityDescription.entity(forEntityName: "LosersDataTable", in: context!)!
        
        for i in 0...dataModelLosersArray.count-1 {
            let losersData = NSManagedObject(entity: losersEntity, insertInto: context)
            
            losersData.setValue(dataModelLosersArray[i].symbol, forKey: "symbol")
            losersData.setValue(dataModelLosersArray[i].companyName, forKey: "companyName")
            losersData.setValue(dataModelLosersArray[i].primaryExchange, forKey: "primaryExchange")
            losersData.setValue(dataModelLosersArray[i].sector, forKey: "sector")
            losersData.setValue(dataModelLosersArray[i].calculationPrice, forKey: "calculationPrice")
            losersData.setValue(dataModelLosersArray[i].open, forKey: "open")
            losersData.setValue(dataModelLosersArray[i].openTime, forKey: "openTime")
            losersData.setValue(dataModelLosersArray[i].close, forKey: "close")
            losersData.setValue(dataModelLosersArray[i].closeTime, forKey: "closeTime")
            losersData.setValue(dataModelLosersArray[i].high, forKey: "high")
            losersData.setValue(dataModelLosersArray[i].low, forKey: "low")
            losersData.setValue(dataModelLosersArray[i].latestPrice, forKey: "latestPrice")
            losersData.setValue(dataModelLosersArray[i].latestSource, forKey: "latestSource")
            losersData.setValue(dataModelLosersArray[i].latestTime, forKey: "latestTime")
            losersData.setValue(dataModelLosersArray[i].latestUpdate, forKey: "latestUpdate")
            losersData.setValue(dataModelLosersArray[i].latestVolume, forKey: "latestVolume")
            losersData.setValue(dataModelLosersArray[i].iexRealtimePrice, forKey: "iexRealtimePrice")
            losersData.setValue(dataModelLosersArray[i].iexRealtimeSize, forKey: "iexRealtimeSize")
            losersData.setValue(dataModelLosersArray[i].iexLastUpdated, forKey: "iexLastUpdated")
            losersData.setValue(dataModelLosersArray[i].delayedPrice, forKey: "delayedPrice")
            losersData.setValue(dataModelLosersArray[i].delayedPriceTime, forKey: "delayedPriceTime")
            losersData.setValue(dataModelLosersArray[i].extendedPrice, forKey: "extendedPrice")
            losersData.setValue(dataModelLosersArray[i].extendedChange, forKey: "extendedChange")
            losersData.setValue(dataModelLosersArray[i].extendedChangePercent, forKey: "extendedChangePercent")
            losersData.setValue(dataModelLosersArray[i].extendedPriceTime, forKey: "extendedPriceTime")
            losersData.setValue(dataModelLosersArray[i].previousClose, forKey: "previousClose")
            losersData.setValue(dataModelLosersArray[i].change, forKey: "change")
            losersData.setValue(dataModelLosersArray[i].changePercent, forKey: "changePercent")
            losersData.setValue(dataModelLosersArray[i].iexMarketPercent, forKey: "iexMarketPercent")
            losersData.setValue(dataModelLosersArray[i].iexVolume, forKey: "iexVolume")
            losersData.setValue(dataModelLosersArray[i].avgTotalVolume, forKey: "avgTotalVolume")
            losersData.setValue(dataModelLosersArray[i].iexBidPrice, forKey: "iexBidPrice")
            losersData.setValue(dataModelLosersArray[i].iexBidSize, forKey: "iexBidSize")
            losersData.setValue(dataModelLosersArray[i].iexAskPrice, forKey: "iexAskPrice")
            losersData.setValue(dataModelLosersArray[i].iexAskSize, forKey: "iexAskSize")
            losersData.setValue(dataModelLosersArray[i].marketCap, forKey: "marketCap")
            losersData.setValue(dataModelLosersArray[i].peRatio, forKey: "peRatio")
            losersData.setValue(dataModelLosersArray[i].week52High, forKey: "week52High")
            losersData.setValue(dataModelLosersArray[i].week52Low, forKey: "week52Low")
            losersData.setValue(dataModelLosersArray[i].ytdChange, forKey: "ytdChange")
            
            do {
                try context?.save()
            } catch {
                print("Failed saving")
            }
            
        }
    }
    
    func deleteFromLosersDataTable() ->Void {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "LosersDataTable")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try context?.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                context?.delete(item)
            }
            
            // Save Changes
            try context?.save()
            
        } catch {
            // Error Handling
            // ...
        }
    }
    
    func getDataFromLosersDataTable() -> [DataModelLosers] {
        var dataModelLosersArray:[DataModelLosers] = [DataModelLosers]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "LosersDataTable")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context?.fetch(request)
            for data in result as! [NSManagedObject] {
                
                let dataModelLosersObject: DataModelLosers = DataModelLosers()
                
                
                dataModelLosersObject.symbol = data.value(forKey: "symbol") as? String
                dataModelLosersObject.companyName = data.value(forKey: "companyName") as? String
                dataModelLosersObject.primaryExchange = data.value(forKey: "primaryExchange") as? String
                dataModelLosersObject.sector = data.value(forKey: "sector") as? String
                dataModelLosersObject.calculationPrice = data.value(forKey: "calculationPrice") as? String
                dataModelLosersObject.open = data.value(forKey: "open") as? String
                dataModelLosersObject.openTime = data.value(forKey: "openTime") as? String
                dataModelLosersObject.close = data.value(forKey: "close") as? String
                dataModelLosersObject.closeTime = data.value(forKey: "closeTime") as? String
                dataModelLosersObject.high = data.value(forKey: "high") as? String
                dataModelLosersObject.low = data.value(forKey: "low") as? String
                dataModelLosersObject.latestPrice = data.value(forKey: "latestPrice") as? String
                dataModelLosersObject.latestSource = data.value(forKey: "latestSource") as? String
                dataModelLosersObject.latestTime = data.value(forKey: "latestTime") as? String
                dataModelLosersObject.latestUpdate = data.value(forKey: "latestUpdate") as? String
                dataModelLosersObject.latestVolume = data.value(forKey: "latestVolume") as? String
                dataModelLosersObject.iexRealtimePrice = data.value(forKey: "iexRealtimePrice") as? String
                dataModelLosersObject.iexRealtimeSize = data.value(forKey: "iexRealtimeSize") as? String
                dataModelLosersObject.iexLastUpdated = data.value(forKey: "iexLastUpdated") as? String
                dataModelLosersObject.delayedPrice = data.value(forKey: "delayedPrice") as? String
                dataModelLosersObject.delayedPriceTime = data.value(forKey: "delayedPriceTime") as? String
                dataModelLosersObject.extendedPrice = data.value(forKey: "extendedPrice") as? String
                dataModelLosersObject.extendedChange = data.value(forKey: "extendedChange") as? String
                dataModelLosersObject.extendedChangePercent = data.value(forKey: "extendedChangePercent") as? String
                dataModelLosersObject.extendedPriceTime = data.value(forKey: "extendedPriceTime") as? String
                dataModelLosersObject.previousClose = data.value(forKey: "previousClose") as? String
                dataModelLosersObject.change = data.value(forKey: "change") as? String
                dataModelLosersObject.changePercent = data.value(forKey: "changePercent") as? String
                dataModelLosersObject.iexMarketPercent = data.value(forKey: "iexMarketPercent") as? String
                dataModelLosersObject.iexVolume = data.value(forKey: "iexVolume") as? String
                dataModelLosersObject.avgTotalVolume = data.value(forKey: "avgTotalVolume") as? String
                dataModelLosersObject.iexBidPrice = data.value(forKey: "iexBidPrice") as? String
                dataModelLosersObject.iexBidSize = data.value(forKey: "iexBidSize") as? String
                dataModelLosersObject.iexAskPrice = data.value(forKey: "iexAskPrice") as? String
                dataModelLosersObject.iexAskSize = data.value(forKey: "iexAskSize") as? String
                dataModelLosersObject.marketCap = data.value(forKey: "marketCap") as? String
                dataModelLosersObject.peRatio = data.value(forKey: "peRatio") as? String
                dataModelLosersObject.week52High = data.value(forKey: "week52High") as? String
                dataModelLosersObject.week52Low = data.value(forKey: "week52Low") as? String
                dataModelLosersObject.ytdChange = data.value(forKey: "ytdChange") as? String
                
                dataModelLosersArray.append(dataModelLosersObject)
                
            }
            
            
            
        } catch {
            print("Failed")
        }
        
        return dataModelLosersArray
    }
    
    
    ///////////////////////// PortfolioTable //////////////////////////////////////
    
    func addDataToPortfolioDataTable(dataModelPortfolioArray: [DataModelPortfolio] ) -> Void {
        
        let portfolioEntity = NSEntityDescription.entity(forEntityName: "PortfolioDataTable", in: context!)!
        
        for i in 0...dataModelPortfolioArray.count-1 {
            let portfolioData = NSManagedObject(entity: portfolioEntity, insertInto: context)
            
            portfolioData.setValue(dataModelPortfolioArray[i].symbol, forKey: "symbol")
            portfolioData.setValue(dataModelPortfolioArray[i].companyName, forKey: "companyName")
            portfolioData.setValue(dataModelPortfolioArray[i].primaryExchange, forKey: "primaryExchange")
            portfolioData.setValue(dataModelPortfolioArray[i].sector, forKey: "sector")
            portfolioData.setValue(dataModelPortfolioArray[i].calculationPrice, forKey: "calculationPrice")
            portfolioData.setValue(dataModelPortfolioArray[i].open, forKey: "open")
            portfolioData.setValue(dataModelPortfolioArray[i].openTime, forKey: "openTime")
            portfolioData.setValue(dataModelPortfolioArray[i].close, forKey: "close")
            portfolioData.setValue(dataModelPortfolioArray[i].closeTime, forKey: "closeTime")
            portfolioData.setValue(dataModelPortfolioArray[i].high, forKey: "high")
            portfolioData.setValue(dataModelPortfolioArray[i].low, forKey: "low")
            portfolioData.setValue(dataModelPortfolioArray[i].latestPrice, forKey: "latestPrice")
            portfolioData.setValue(dataModelPortfolioArray[i].latestSource, forKey: "latestSource")
            portfolioData.setValue(dataModelPortfolioArray[i].latestTime, forKey: "latestTime")
            portfolioData.setValue(dataModelPortfolioArray[i].latestUpdate, forKey: "latestUpdate")
            portfolioData.setValue(dataModelPortfolioArray[i].latestVolume, forKey: "latestVolume")
            portfolioData.setValue(dataModelPortfolioArray[i].iexRealtimePrice, forKey: "iexRealtimePrice")
            portfolioData.setValue(dataModelPortfolioArray[i].iexRealtimeSize, forKey: "iexRealtimeSize")
            portfolioData.setValue(dataModelPortfolioArray[i].iexLastUpdated, forKey: "iexLastUpdated")
            portfolioData.setValue(dataModelPortfolioArray[i].delayedPrice, forKey: "delayedPrice")
            portfolioData.setValue(dataModelPortfolioArray[i].delayedPriceTime, forKey: "delayedPriceTime")
            portfolioData.setValue(dataModelPortfolioArray[i].extendedPrice, forKey: "extendedPrice")
            portfolioData.setValue(dataModelPortfolioArray[i].extendedChange, forKey: "extendedChange")
            portfolioData.setValue(dataModelPortfolioArray[i].extendedChangePercent, forKey: "extendedChangePercent")
            portfolioData.setValue(dataModelPortfolioArray[i].extendedPriceTime, forKey: "extendedPriceTime")
            portfolioData.setValue(dataModelPortfolioArray[i].previousClose, forKey: "previousClose")
            portfolioData.setValue(dataModelPortfolioArray[i].change, forKey: "change")
            portfolioData.setValue(dataModelPortfolioArray[i].changePercent, forKey: "changePercent")
            portfolioData.setValue(dataModelPortfolioArray[i].iexMarketPercent, forKey: "iexMarketPercent")
            portfolioData.setValue(dataModelPortfolioArray[i].iexVolume, forKey: "iexVolume")
            portfolioData.setValue(dataModelPortfolioArray[i].avgTotalVolume, forKey: "avgTotalVolume")
            portfolioData.setValue(dataModelPortfolioArray[i].iexBidPrice, forKey: "iexBidPrice")
            portfolioData.setValue(dataModelPortfolioArray[i].iexBidSize, forKey: "iexBidSize")
            portfolioData.setValue(dataModelPortfolioArray[i].iexAskPrice, forKey: "iexAskPrice")
            portfolioData.setValue(dataModelPortfolioArray[i].iexAskSize, forKey: "iexAskSize")
            portfolioData.setValue(dataModelPortfolioArray[i].marketCap, forKey: "marketCap")
            portfolioData.setValue(dataModelPortfolioArray[i].peRatio, forKey: "peRatio")
            portfolioData.setValue(dataModelPortfolioArray[i].week52High, forKey: "week52High")
            portfolioData.setValue(dataModelPortfolioArray[i].week52Low, forKey: "week52Low")
            portfolioData.setValue(dataModelPortfolioArray[i].ytdChange, forKey: "ytdChange")
            
            do {
                try context?.save()
            } catch {
                print("Failed saving")
            }
            
        }
    }
    
    func deleteFromPortfolioDataTable() ->Void {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PortfolioDataTable")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try context?.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                context?.delete(item)
            }
            
            // Save Changes
            try context?.save()
            
        } catch {
            // Error Handling
            // ...
        }
    }
    
    func getDataFromPortfolioDataTable() -> [DataModelPortfolio] {
        var dataModelPortfolioArray:[DataModelPortfolio] = [DataModelPortfolio]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PortfolioDataTable")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context?.fetch(request)
            for data in result as! [NSManagedObject] {
                
                let dataModelPortfolioObject: DataModelPortfolio = DataModelPortfolio()
                
                
                dataModelPortfolioObject.symbol = data.value(forKey: "symbol") as? String
                dataModelPortfolioObject.companyName = data.value(forKey: "companyName") as? String
                dataModelPortfolioObject.primaryExchange = data.value(forKey: "primaryExchange") as? String
                dataModelPortfolioObject.sector = data.value(forKey: "sector") as? String
                dataModelPortfolioObject.calculationPrice = data.value(forKey: "calculationPrice") as? String
                dataModelPortfolioObject.open = data.value(forKey: "open") as? String
                dataModelPortfolioObject.openTime = data.value(forKey: "openTime") as? String
                dataModelPortfolioObject.close = data.value(forKey: "close") as? String
                dataModelPortfolioObject.closeTime = data.value(forKey: "closeTime") as? String
                dataModelPortfolioObject.high = data.value(forKey: "high") as? String
                dataModelPortfolioObject.low = data.value(forKey: "low") as? String
                dataModelPortfolioObject.latestPrice = data.value(forKey: "latestPrice") as? String
                dataModelPortfolioObject.latestSource = data.value(forKey: "latestSource") as? String
                dataModelPortfolioObject.latestTime = data.value(forKey: "latestTime") as? String
                dataModelPortfolioObject.latestUpdate = data.value(forKey: "latestUpdate") as? String
                dataModelPortfolioObject.latestVolume = data.value(forKey: "latestVolume") as? String
                dataModelPortfolioObject.iexRealtimePrice = data.value(forKey: "iexRealtimePrice") as? String
                dataModelPortfolioObject.iexRealtimeSize = data.value(forKey: "iexRealtimeSize") as? String
                dataModelPortfolioObject.iexLastUpdated = data.value(forKey: "iexLastUpdated") as? String
                dataModelPortfolioObject.delayedPrice = data.value(forKey: "delayedPrice") as? String
                dataModelPortfolioObject.delayedPriceTime = data.value(forKey: "delayedPriceTime") as? String
                dataModelPortfolioObject.extendedPrice = data.value(forKey: "extendedPrice") as? String
                dataModelPortfolioObject.extendedChange = data.value(forKey: "extendedChange") as? String
                dataModelPortfolioObject.extendedChangePercent = data.value(forKey: "extendedChangePercent") as? String
                dataModelPortfolioObject.extendedPriceTime = data.value(forKey: "extendedPriceTime") as? String
                dataModelPortfolioObject.previousClose = data.value(forKey: "previousClose") as? String
                dataModelPortfolioObject.change = data.value(forKey: "change") as? String
                dataModelPortfolioObject.changePercent = data.value(forKey: "changePercent") as? String
                dataModelPortfolioObject.iexMarketPercent = data.value(forKey: "iexMarketPercent") as? String
                dataModelPortfolioObject.iexVolume = data.value(forKey: "iexVolume") as? String
                dataModelPortfolioObject.avgTotalVolume = data.value(forKey: "avgTotalVolume") as? String
                dataModelPortfolioObject.iexBidPrice = data.value(forKey: "iexBidPrice") as? String
                dataModelPortfolioObject.iexBidSize = data.value(forKey: "iexBidSize") as? String
                dataModelPortfolioObject.iexAskPrice = data.value(forKey: "iexAskPrice") as? String
                dataModelPortfolioObject.iexAskSize = data.value(forKey: "iexAskSize") as? String
                dataModelPortfolioObject.marketCap = data.value(forKey: "marketCap") as? String
                dataModelPortfolioObject.peRatio = data.value(forKey: "peRatio") as? String
                dataModelPortfolioObject.week52High = data.value(forKey: "week52High") as? String
                dataModelPortfolioObject.week52Low = data.value(forKey: "week52Low") as? String
                dataModelPortfolioObject.ytdChange = data.value(forKey: "ytdChange") as? String
                
                dataModelPortfolioArray.append(dataModelPortfolioObject)
                
            }
            
            
            
        } catch {
            print("Failed")
        }
        
        return dataModelPortfolioArray
    }
}
