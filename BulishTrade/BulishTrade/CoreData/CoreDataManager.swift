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
}
