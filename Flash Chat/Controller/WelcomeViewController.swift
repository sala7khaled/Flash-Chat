//
//  ViewController.swift
//  Flash Chat
//
//  Created by Salah Khaled on 3/7/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    // Hide NavigationBar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval:  1, repeats: false) { (timer) in
            self.titleLabel.text = Constants.appName
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(WelcomeViewController.tapFunction))
        titleLabel.isUserInteractionEnabled = true
        titleLabel.addGestureRecognizer(tap)
    
    }
    
    @objc
    func tapFunction(sender:UITapGestureRecognizer) {
        titleLabel.text = Constants.appName
    }
    
    //        titleLabel.text = ""
    //        let titleText = Constants.appName
    //        var charIndex = 0.0
    //
    //        for letter in titleText {
    //            Timer.scheduledTimer(withTimeInterval:  0.1 * charIndex, repeats: false) { (timer) in
    //                self.titleLabel.text?.append(letter)
    //            }
    //            charIndex += 1
    //        }
    
}

