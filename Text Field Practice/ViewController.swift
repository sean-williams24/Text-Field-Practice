//
//  ViewController.swift
//  Text Field Practice
//
//  Created by Sean Williams on 29/05/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: - Outlets
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    //MARK: - Delegate objects
    
    let zipcodeDelegate = ZipcodeDelegate()
    let cashDelegate = CashDelegate()
 
    
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegates
        
        textField1.delegate = zipcodeDelegate
        textField2.delegate = cashDelegate
        textField3.delegate = self
        
        self.toggleSwitch.setOn(false, animated: true)
        
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return toggleSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField3.resignFirstResponder()
        
        return true
    }
    
    
    //MARK: - Textfield delegate method?

    @IBAction func toggleTextField(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
           self.textField3.resignFirstResponder()
        }
    }
}

