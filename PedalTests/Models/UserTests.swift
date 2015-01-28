//
//  UserTests.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/27/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import XCTest

class UserTests: XCTestCase {

    // MARK: - Tests

    func testToDictionary () {
        let user = User()
        var dic = user.toDictionary()
        XCTAssertEqual(dic.count, 0, "Dictionary for an empty user should be empty")

        user.name = "Martin Fowler"
        user.username = "mfowler"
        user.email = "fowler@acm.org"
        user.password = "AgileWork5"
        dic = user.toDictionary()
        XCTAssertEqual(dic.count, 4, "User dictionary should have 4 key-value pairs")
        self.assertEquals(user, dictionary: dic)
    }

    func testInitWithDictionary () {

        // empty dictionary
        var dic = [String: AnyObject]()
        var user = User(dictionary: dic)
        self.assertEmpty(user)

        // dictionary with invalid values
        dic = ["name": 1, "username": 2.0, "email": User(), "password": true]
        user = User(dictionary: dic)
        self.assertEmpty(user)

        // dictionary with valid values
        dic = ["name": "Linus Torvalds", "username": "torvalds", "email": "torvalds@osdl.org", "password": "Linux4ev3r"]
        user = User(dictionary: dic)
        self.assertEquals(user, dictionary: dic)
    }


    // MARK: - Helpers

    func assertEquals  (user: User, dictionary: [String: AnyObject]) {
        XCTAssertEqual(dictionary["name"] as String, user.name!, "Dictionary should contain user's name")
        XCTAssertEqual(dictionary["username"] as String, user.username!, "Dictionary should contain user's username")
        XCTAssertEqual(dictionary["email"] as String, user.email!, "Dictionary should contain user's email")
        XCTAssertEqual(dictionary["password"] as String, user.password!, "Dictionary should contain user's password")
    }

    func assertEmpty (user: User) {
        XCTAssertNil(user.name, "User's name should not be set")
        XCTAssertNil(user.username, "User's username should not be set")
        XCTAssertNil(user.email, "User's email should not be set")
        XCTAssertNil(user.password, "User's password should not be set")
    }

}
