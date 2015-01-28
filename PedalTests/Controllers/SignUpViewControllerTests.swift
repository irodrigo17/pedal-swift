//
//  SignUpViewControllerTests.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/27/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import UIKit
import XCTest

class SignUpViewControllerTests: XCTestCase {

    func testTableViewSetup() {
        let vc = SignUpViewController()
        let tableView = UITableView()
        vc.tableView = tableView
        XCTAssertEqual(1, vc.numberOfSectionsInTableView(tableView), "Table view should have one section")
        XCTAssertEqual(4, vc.tableView(tableView, numberOfRowsInSection: 0), "Table view should have four rows")
    }

    func testCellForRowAtIndexPath() {
        // TODO: implement me, need to find a way to mock the table view controller properly
    }

    func testConfigureNameCell() {
        let vc = SignUpViewController()
        let user = User()
        user.name = "Mattt Thompson"
        vc.user = user

        let cell = TextFieldCell()
        let textField = UITextField()
        cell.textField = textField

        vc.configureNameCell(cell)
        XCTAssertEqual(cell.textField.placeholder!, "Name", "Name cell placeholder should be properly set")
        XCTAssertEqual(cell.textField.text, user.name!, "Name cell text should be properly set")

        XCTAssertEqual(cell.textField.autocapitalizationType, UITextAutocapitalizationType.Words, "Name cell autocapitalization should be properly set")
        XCTAssertEqual(cell.textField.keyboardType, UIKeyboardType.Default, "Name cell keyboard should be properly set")
        XCTAssertEqual(cell.textField.secureTextEntry, false, "Name cell secure text entry should be properly set")
        XCTAssertEqual(cell.textField.returnKeyType, UIReturnKeyType.Next, "Name cell return key type should be properly set")
    }

    func testConfigureUsernameCell() {
        let vc = SignUpViewController()
        let user = User()
        user.username = "mattt"
        vc.user = user

        let cell = TextFieldCell()
        let textField = UITextField()
        cell.textField = textField

        vc.configureUsernameCell(cell)
        XCTAssertEqual(cell.textField.placeholder!, "Username", "Name cell placeholder should be properly set")
        XCTAssertEqual(cell.textField.text, user.username!, "Name cell text should be properly set")

        XCTAssertEqual(cell.textField.autocapitalizationType, UITextAutocapitalizationType.None, "Name cell autocapitalization should be properly set")
        XCTAssertEqual(cell.textField.keyboardType, UIKeyboardType.Default, "Name cell keyboard should be properly set")
        XCTAssertEqual(cell.textField.secureTextEntry, false, "Name cell secure text entry should be properly set")
        XCTAssertEqual(cell.textField.returnKeyType, UIReturnKeyType.Next, "Name cell return key type should be properly set")
    }

    func testConfigureEmailCell() {
        let vc = SignUpViewController()
        let user = User()
        user.email = "mattt@nshipster.com"
        vc.user = user

        let cell = TextFieldCell()
        let textField = UITextField()
        cell.textField = textField

        vc.configureEmailCell(cell)
        XCTAssertEqual(cell.textField.placeholder!, "E-Mail", "Name cell placeholder should be properly set")
        XCTAssertEqual(cell.textField.text, user.email!, "Name cell text should be properly set")

        XCTAssertEqual(cell.textField.autocapitalizationType, UITextAutocapitalizationType.None, "Name cell autocapitalization should be properly set")
        XCTAssertEqual(cell.textField.keyboardType, UIKeyboardType.EmailAddress, "Name cell keyboard should be properly set")
        XCTAssertEqual(cell.textField.secureTextEntry, false, "Name cell secure text entry should be properly set")
        XCTAssertEqual(cell.textField.returnKeyType, UIReturnKeyType.Next, "Name cell return key type should be properly set")
    }

    func testConfigurePasswordCell() {
        let vc = SignUpViewController()
        let user = User()
        user.password = "CoC04-LovR!"
        vc.user = user

        let cell = TextFieldCell()
        let textField = UITextField()
        cell.textField = textField

        vc.configurePasswordCell(cell)
        XCTAssertEqual(cell.textField.placeholder!, "Password", "Name cell placeholder should be properly set")
        XCTAssertEqual(cell.textField.text, user.password!, "Name cell text should be properly set")

        XCTAssertEqual(cell.textField.autocapitalizationType, UITextAutocapitalizationType.None, "Name cell autocapitalization should be properly set")
        XCTAssertEqual(cell.textField.keyboardType, UIKeyboardType.Default, "Name cell keyboard should be properly set")
        XCTAssertEqual(cell.textField.secureTextEntry, true, "Name cell secure text entry should be properly set")
        XCTAssertEqual(cell.textField.returnKeyType, UIReturnKeyType.Done, "Name cell return key type should be properly set")
    }

    func testTextFieldWillReturn() {
        // TODO: implement me, need to find a way to mock the table view controller properly
    }

    func testCreateUser() {
        // TODO: implement me, need to find a way to mock the table view controller properly
    }

}
