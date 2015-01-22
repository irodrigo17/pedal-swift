//
//  SignInViewController.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/22/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import UIKit

class SignInViewController: UITableViewController {

    @IBAction func cancel(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func signIn(sender: UIBarButtonItem) {
        var alert = UIAlertView(title: "Not implemented", message: "Yet...", delegate: nil, cancelButtonTitle: "OK")
        alert.show()
    }


}
