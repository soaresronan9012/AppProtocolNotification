//
//  RecoverVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 20/11/24.
//

import UIKit

class RecoverVC: UIViewController, UITextFieldDelegate {  // extensao ao protocol
    
    var screen : RecoverScreen?
    
    override func loadView() {
        screen = RecoverScreen()
        view = screen!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configDelegateTextField(delegate: self) // invocando delegate padrao de uitextfield
        
    }
   
    
}
