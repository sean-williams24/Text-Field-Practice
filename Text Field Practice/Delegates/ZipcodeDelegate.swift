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
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        textField.clearsOnBeginEditing = true
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
 
    
    
}
