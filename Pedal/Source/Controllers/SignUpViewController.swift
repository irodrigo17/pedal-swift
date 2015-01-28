//
//  SignUpViewController.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/22/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import UIKit

class SignUpViewController: UITableViewController, TextFieldCellDelegate {

    // MARK: - Attributes

    var user: User?


    // MARK: - Actions

    @IBAction func cancel(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func signUp(sender: AnyObject) {
        let user = self.createUser()

        let alert = UIAlertView(title: "Sign Up", message:"User: \(user.toDictionary())", delegate: nil, cancelButtonTitle: "OK")
        alert.show()
    }


    // MARK: - UITableViewDataSource

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: TextFieldCell = tableView.dequeueReusableCellWithIdentifier("TextFieldCell") as TextFieldCell
        cell.delegate = self
        switch indexPath.row {
        case 0:
            self.configureNameCell(cell)
        case 1:
            self.configureUsernameCell(cell)
        case 2:
            self.configureEmailCell(cell)
        case 3:
            self.configurePasswordCell(cell)
        default:
            println("oops!")
        }
        return cell
    }


    // MARK: - Configure cells

    func configureNameCell(cell: TextFieldCell) {
        cell.textField.placeholder = "Name"
        cell.textField.text = user?.name
        cell.textField.autocapitalizationType = UITextAutocapitalizationType.Words
        cell.textField.keyboardType = UIKeyboardType.Default
        cell.textField.secureTextEntry = false
        cell.textField.returnKeyType = UIReturnKeyType.Next
    }

    func configureUsernameCell(cell: TextFieldCell) {
        cell.textField.placeholder = "Username"
        cell.textField.text = user?.username
        cell.textField.autocapitalizationType = UITextAutocapitalizationType.None
        cell.textField.keyboardType = UIKeyboardType.Default
        cell.textField.secureTextEntry = false
        cell.textField.returnKeyType = UIReturnKeyType.Next
    }

    func configureEmailCell(cell: TextFieldCell) {
        cell.textField.placeholder = "E-Mail"
        cell.textField.text = user?.email
        cell.textField.autocapitalizationType = UITextAutocapitalizationType.None
        cell.textField.keyboardType = UIKeyboardType.EmailAddress
        cell.textField.secureTextEntry = false
        cell.textField.returnKeyType = UIReturnKeyType.Next
    }

    func configurePasswordCell(cell: TextFieldCell) {
        cell.textField.placeholder = "Password"
        cell.textField.text = user?.password
        cell.textField.autocapitalizationType = UITextAutocapitalizationType.None
        cell.textField.keyboardType = UIKeyboardType.Default
        cell.textField.secureTextEntry = true
        cell.textField.returnKeyType = UIReturnKeyType.Done
    }


    // MARK: - TextFieldCellDelegate

    func textFieldWillReturn(cell: TextFieldCell) {
        let indexPath = self.tableView.indexPathForCell(cell)!
        if indexPath.row == self.tableView.numberOfRowsInSection(indexPath.section) - 1 {
            self.signUp(self)
        }
        else {
            let nextIndexPath = NSIndexPath(forRow: indexPath.row + 1, inSection: indexPath.section)
            let nextCell = self.tableView.cellForRowAtIndexPath(nextIndexPath) as TextFieldCell
            nextCell.textField.becomeFirstResponder()
        }
    }


    // MARK - Helpers

    func createUser() -> User {
        let user = User()

        let nameIndexPath = NSIndexPath(forRow: 0, inSection: 0)
        let nameCell = self.tableView.cellForRowAtIndexPath(nameIndexPath) as TextFieldCell
        user.name = nameCell.textField.text

        let usernameIndexPath = NSIndexPath(forRow: 1, inSection: 0)
        let usernameCell = self.tableView.cellForRowAtIndexPath(usernameIndexPath) as TextFieldCell
        user.username = usernameCell.textField.text

        let emailIndexPath = NSIndexPath(forRow: 2, inSection: 0)
        let emailCell = self.tableView.cellForRowAtIndexPath(emailIndexPath) as TextFieldCell
        user.email = emailCell.textField.text

        let passwordIndexPath = NSIndexPath(forRow: 3, inSection: 0)
        let passwordCell = self.tableView.cellForRowAtIndexPath(passwordIndexPath) as TextFieldCell
        user.password = passwordCell.textField.text

        return user
    }

}
