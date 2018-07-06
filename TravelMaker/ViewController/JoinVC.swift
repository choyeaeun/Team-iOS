//
//  JoinViewController.swift
//  TravelMaker
//
//  Created by 이충신 on 2018. 7. 2..
//  Copyright © 2018년 GGOMMI. All rights reserved.
//

import UIKit

class JoinVC: UIViewController, UITextFieldDelegate {

    let userdefault = UserDefaults.standard
    
    @IBOutlet weak var nickNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nickNameTextField.delegate = self;

    }
    
    
    @IBAction func pressedJoinBtn(_ sender: Any) {
            enterHome()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nickNameTextField {
            enterHome()
        }
        return true
    }
    
    func enterHome() {
        
        if nickNameTextField.text != "" {
            
            userdefault.set(gsno(nickNameTextField.text), forKey: "nickName")
            
           
        }
        
    }

    
    

}
