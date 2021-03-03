//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Dylan Park on 3/3/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print (e.localizedDescription)
                } else {
                    //Navigate to ChatViewController
                    self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                }
            }
        }
    }

    
}
