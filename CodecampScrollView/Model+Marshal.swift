//
//  Model+Marshal.swift
//  CodecampScrollView
//
//  Created by Petr Šíma on 15/11/2016.
//  Copyright © 2016 Petr Šíma. All rights reserved.
//

import Marshal

struct Person {
    let name: String
    let photo: String?
    let addresses: [Address]
    let gender: Gender
}

extension Person: Unmarshaling {
    init(object: MarshaledObject) throws {
        self.init(
            name: try object.value(for: "name"),
            photo: try object.value(for: "photo"),
            addresses: try object.value(for: "addresses"),
            gender: (try object.value(for: "gender")) ?? .thai
        )
    }
}


struct Address {
    let city: String
    let street: String
    let type: AddressType
}


extension Address: Unmarshaling {
    init(object: MarshaledObject) throws {
        self.init(
            city: try object.value(for: "city"),
            street: try object.value(for: "street"),
            type: .residential//try object.value(for: "type")
        )
    }
}

enum AddressType: String {
    case residential = "residential"
    case business = "bussiness"
}

enum Gender: String {
    case male = "male"
    case female = "female"
    case thai = "_allCasesShouldDefaultHere"
}




