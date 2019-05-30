//
//  CashDelegate.swift
//  Text Field Practice
//
//  Created by Sean Williams on 29/05/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import Foundation
import UIKit

class CashDelegate: NSObject, UITextFieldDelegate {
    
    var userInput: Int = 0
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.usesSignificantDigits = true
        numberFormatter.maximumSignificantDigits = 4
//        numberFormatter.string(from: 12.34)
//        textField.text = "$0.0"
        
        return true
    }
}
