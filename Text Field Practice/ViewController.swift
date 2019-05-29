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
    
    //MARK: - Delegate objects
    
    let zipcodeDelegate = ZipcodeDelegate()
    let cashDelegate = CashDelegate()
    let lockableDelegate = LockableDelegate()
    
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the delegates
        
        textField1.delegate = zipcodeDelegate
        textField2.delegate = cashDelegate
        textField3.delegate = lockableDelegate
        
    }

    
    //MARK: - Textfield delegate method?

}

