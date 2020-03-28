//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Salah Khaled on 3/7/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var viewPassword: UIView!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuView()
    }
    
    func setuView() {
        viewEmail.setShadow()
        viewEmail.setRadius(viewEmail.frame.height / 2)
        txtFldEmail.setPlaceHolder(text: "Email", color: UIColor.black)
        
        viewPassword.setShadow()
        viewPassword.setRadius(viewEmail.frame.height / 2)
        txtFldPassword.setPlaceHolder(text: "Password", color: UIColor.black)
        
        btnRegister.setRadius(viewEmail.frame.height / 2)
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        lblError.isHidden = true
        
        if let email = txtFldEmail.text, let password = txtFldPassword.text {
            if (email.isEmpty || password.isEmpty) {
                self.lblError.text = "Please complete your information"
                self.lblError.isHidden = false
            } else {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        self.lblError.text = e.localizedDescription
                        self.lblError.isHidden = false
                    } else {
                        self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                    }
                }
            }
        }
    }
}
