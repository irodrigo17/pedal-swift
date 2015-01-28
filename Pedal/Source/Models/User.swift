//
//  User.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/23/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import UIKit

class User: DictionaryRepresentable {

    var name: String?
    var username: String?
    var email: String?
    var password: String?

    func toDictionary() -> [String: AnyObject] {
        var dic = [String: AnyObject]()
        dic["name"] = name
        dic["username"] = username
        dic["email"] = email
        dic["password"] = password
        return dic
    }

    required init(dictionary: [String: AnyObject]) {
        name = dictionary["name"] as? String
        username = dictionary["username"] as? String
        email = dictionary["email"] as? String
        password = dictionary["password"] as? String
    }

    init() {

    }

}
