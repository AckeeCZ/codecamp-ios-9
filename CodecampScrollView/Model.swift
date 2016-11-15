//
//  Model.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 11/04/16.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import Foundation
import Curry
import Argo
import Runes

//struct Person {
//    let name: String
//    let photo: String?
//    let addresses: [Address]
//    let gender: Gender
//}
//
//extension Person: Decodable {
//    static func decode(_ json: JSON) -> Decoded<Person> {
//        return curry(self.init)
//        <^> json <| "name"
//        <*> json <|? "photo"
//        <*> json <|| "addresses"
//        <*> (json <| "gender" <|> pure(.thai))
//    }
//}
//
//struct Address {
//    let city: String
//    let street: String
//    let type: AddressType
//}
//extension Address: Decodable {
//    static func decode(_ json: JSON) -> Decoded<Address> {
//        return curry(self.init)
//        <^> json <| "city"
//        <*> json <| "street"
//        <*> json <| "address_type"
//    }
//}
//
//enum AddressType: String {
//    case residential = "residential"
//    case business = "bussiness"
//}
//extension AddressType: Decodable { }
//
//enum Gender: String {
//    case male = "male"
//    case female = "female"
//    case thai = "_allCasesShouldDefaultHere"
//}
//extension Gender: Decodable { }

//Helpers
extension Address {
    var text: String {
        return city + ", " + street
    }
}

extension Gender {
    fileprivate static var randomColor: UIColor = .randomColor()

    var color: UIColor {
        switch self {
        case .male: return .blue
        case .female: return .gayColor()
        case .thai: return Gender.randomColor
        }
    }
}
