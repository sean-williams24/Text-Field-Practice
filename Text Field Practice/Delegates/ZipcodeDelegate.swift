//
//  ZipcodeDelegate.swift
//  Text Field Practice
//
//  Created by Sean Williams on 29/05/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import Foundation
import UIKit

class ZipcodeDelegate: NSObject, UITextFieldDelegate {
    
   
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Prevent invalid character input, if keyboard is numberpad
//        if (textField.keyboardType == UIKeyboardType.decimalPad) {
//            let alphabet = textField.text ?? ""
//            let alpha = alphabet.rangeOfCharacter(from: CharacterSet.decimalDigits)
//
//
//        }
        let currentText = textField.text ?? ""
    
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        return updatedText.count <= 5
    }
}
