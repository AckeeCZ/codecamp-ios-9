import Foundation

@objc(Address)
public class Address: _Address {
    // Custom logic goes here.
}

extension Address {
    var text: String {
        return (city ?? "") + ", " + (street ?? "")
    }
}