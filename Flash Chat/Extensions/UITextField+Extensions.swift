//
//  UITextField+Extensions.swift
//  Flash Chat
//
//  Created by Salah Khaled on 3/22/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setPlaceHolder(text: String, color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: text,
        attributes: [NSAttributedString.Key.foregroundColor: color])
    }
    
}
