//
//  Address+CoreDataProperties.swift
//  
//
//  Created by Daniel Brezina on 06/12/2016.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Address {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Address> {
        return NSFetchRequest<Address>(entityName: "Address");
    }

    @NSManaged public var city: String?
    @NSManaged public var street: String?
    @NSManaged public var persons: NSSet?

}

// MARK: Generated accessors for persons
extension Address {

    @objc(addPersonsObject:)
    @NSManaged public func addToPersons(_ value: Person)

    @objc(removePersonsObject:)
    @NSManaged public func removeFromPersons(_ value: Person)

    @objc(addPersons:)
    @NSManaged public func addToPersons(_ values: NSSet)

    @objc(removePersons:)
    @NSManaged public func removeFromPersons(_ values: NSSet)

}
