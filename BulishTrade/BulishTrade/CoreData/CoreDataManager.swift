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
    
    
    ///////////////////////// TopMarketsDataTable //////////////////////////////////////
    
}
