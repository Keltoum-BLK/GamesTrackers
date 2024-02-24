//
//  Console+CoreDataProperties.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 24/02/2024.
//

import Foundation
import CoreData


extension ConsoleGame {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ConsoleGame> {
        return NSFetchRequest<ConsoleGame>(entityName: "ConsoleGame")
    }
    
    @NSManaged public var id: UUID?
    @NSManaged public var platformImage: Data?
    @NSManaged public var plateformName: String?
    @NSManaged public var platformGames: Set<Item>?
    @NSManaged public var platformOrder: Set<Order>?
   
    public var items: [Item]{
        let setOfItems = platformGames
        return setOfItems!.sorted{
            $0.name ?? "" < $1.name ?? ""
        }
    }
    
     public var orders: [Order]{
         let setOfOrders = platformOrder
         return setOfOrders!.sorted{
             $0.name ?? "" < $1.name ?? ""
         }
     }
}

// MARK: Generated accessors for destionationToTravel
extension ConsoleGame {
    
    @objc(addDestionationToTravelObject:)
    @NSManaged public func addToDestionationToTravel(_ value: Item)
    
    @objc(removeDestionationToTravelObject:)
    @NSManaged public func removeFromDestionationToTravel(_ value: Item)
    
    @objc(addDestionationToTravel:)
    @NSManaged public func addToDestionationToTravel(_ values: NSSet)
    
    @objc(removeDestionationToTravel:)
    @NSManaged public func removeFromDestionationToTravel(_ values: NSSet)
    
}

extension ConsoleGame : Identifiable {
    
}

