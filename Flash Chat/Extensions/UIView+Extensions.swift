//
//  UIView+Extensions.swift
//  Flash Chat
//
//  Created by Salah Khaled on 3/22/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit

extension UIView {
    
    func setShadow() {
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.init(cgColor: CGColor.init(srgbRed: 0, green: 0, blue: 0, alpha: 0.10)).cgColor
        self.layer.shadowRadius = 1
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
    }
    
    func setRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func setRadius() {
        self.layer.cornerRadius = self.frame.height / 2
    }
}
