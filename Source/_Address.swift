// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Address.swift instead.

import Foundation
import CoreData

public enum AddressAttributes: String {
    case city = "city"
    case street = "street"
    case type = "type"
}

public enum AddressRelationships: String {
    case residents = "residents"
}

public class _Address: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "Address"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext) -> NSEntityDescription? {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext)
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init?(managedObjectContext: NSManagedObjectContext) {
        guard let entity = _Address.entity(managedObjectContext) else { return nil }
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var city: String?

    @NSManaged public
    var street: String?

    @NSManaged public
    var type: String?

    // MARK: - Relationships

    @NSManaged public
    var residents: NSSet

}

extension _Address {

    func addResidents(objects: NSSet) {
        let mutable = self.residents.mutableCopy() as! NSMutableSet
        mutable.unionSet(objects as Set<NSObject>)
        self.residents = mutable.copy() as! NSSet
    }

    func removeResidents(objects: NSSet) {
        let mutable = self.residents.mutableCopy() as! NSMutableSet
        mutable.minusSet(objects as Set<NSObject>)
        self.residents = mutable.copy() as! NSSet
    }

    func addResidentsObject(value: Person) {
        let mutable = self.residents.mutableCopy() as! NSMutableSet
        mutable.addObject(value)
        self.residents = mutable.copy() as! NSSet
    }

    func removeResidentsObject(value: Person) {
        let mutable = self.residents.mutableCopy() as! NSMutableSet
        mutable.removeObject(value)
        self.residents = mutable.copy() as! NSSet
    }

}

