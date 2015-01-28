//
//  TestFieldCellTests.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/27/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import UIKit
import XCTest

class TestFieldCellTests: XCTestCase {

    func testAwakeFromNib () {
        let cell = TextFieldCell()
        let textField = UITextField()
        cell.textField = textField
        cell.awakeFromNib()
        XCTAssertTrue(cell.textField.delegate === cell, "The cell should be it's own text field's delegate")
    }

    func testTextFieldShouldReturn () {
        let cell = TextFieldCell()
        let textField = UITextField()
        cell.textField = textField
        let delegate = TestFieldCellDelegateMock()
        cell.delegate = delegate

        textField.becomeFirstResponder()
        XCTAssertTrue(cell.textFieldShouldReturn(textField), "Text field should resign first responder")
        XCTAssertNotNil(delegate.lastTextFieldWillReturnCaller, "Delegate should have been notified")
        XCTAssertTrue(delegate.lastTextFieldWillReturnCaller === cell, "Delegate should have been notified by the cell")
    }
    
}

class TestFieldCellDelegateMock: TextFieldCellDelegate {

    var lastTextFieldWillReturnCaller: TextFieldCell?

    func textFieldWillReturn (cell: TextFieldCell) {
        lastTextFieldWillReturnCaller = cell
    }


}