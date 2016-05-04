// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Person.swift instead.

import Foundation
import CoreData

public enum PersonAttributes: String {
    case gender = "gender"
    case name = "name"
    case photo = "photo"
}

public enum PersonRelationships: String {
    case adresses = "adresses"
}

public class _Person: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "Person"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext) -> NSEntityDescription? {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext)
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init?(managedObjectContext: NSManagedObjectContext) {
        guard let entity = _Person.entity(managedObjectContext) else { return nil }
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var gender: String?

    @NSManaged public
    var name: String?

    @NSManaged public
    var photo: String?

    // MARK: - Relationships

    @NSManaged public
    var adresses: NSSet

}

extension _Person {

    func addAdresses(objects: NSSet) {
        let mutable = self.adresses.mutableCopy() as! NSMutableSet
        mutable.unionSet(objects as Set<NSObject>)
        self.adresses = mutable.copy() as! NSSet
    }

    func removeAdresses(objects: NSSet) {
        let mutable = self.adresses.mutableCopy() as! NSMutableSet
        mutable.minusSet(objects as Set<NSObject>)
        self.adresses = mutable.copy() as! NSSet
    }

    func addAdressesObject(value: Address) {
        let mutable = self.adresses.mutableCopy() as! NSMutableSet
        mutable.addObject(value)
        self.adresses = mutable.copy() as! NSSet
    }

    func removeAdressesObject(value: Address) {
        let mutable = self.adresses.mutableCopy() as! NSMutableSet
        mutable.removeObject(value)
        self.adresses = mutable.copy() as! NSSet
    }

}

