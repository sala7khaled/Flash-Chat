//
//  LoginViewController.swift
//  Flash Chat
//
//  Created by Salah Khaled on 3/7/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuView()
    }
    
    func setuView() {
        emailView.setShadow()
        emailView.setRadius(emailView.frame.height / 2)
        emailTextfield.setPlaceHolder(text: "Email", color: UIColor.black)
        
        passwordView.setShadow()
        passwordView.setRadius(emailView.frame.height / 2)
        passwordTextfield.setPlaceHolder(text: "Password", color: UIColor.black)
        
        loginButton.setRadius(emailView.frame.height / 2)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        self.errorLabel.isHidden = true
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.errorLabel.text = e.localizedDescription
                    self.errorLabel.isHidden = false
                } else {
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }
    }
    
}
