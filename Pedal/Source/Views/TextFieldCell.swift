//
//  TextFieldCell.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/23/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import UIKit


protocol TextFieldCellDelegate {

    func textFieldWillReturn(cell: TextFieldCell)

}


class TextFieldCell: UITableViewCell, UITextFieldDelegate {

    // MARK: - Attributes

    var delegate: TextFieldCellDelegate?


    // MARK: - Outlets

    @IBOutlet weak var textField: UITextField!


    // MARK - Inital setup

    override func awakeFromNib() {
        textField.delegate = self
    }


    // MARK: - UITextFieldDelegate

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        delegate?.textFieldWillReturn(self)
        return true
    }

}
