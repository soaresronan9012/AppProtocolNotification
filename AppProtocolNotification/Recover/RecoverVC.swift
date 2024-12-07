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
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegate(delegate: self) // invocando delegate padrao de uitextfield
        
    }
   
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        screen?.editionButtonrecover()
    }

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()// o return do teclado, baixa o teclado
        return false
    }
    
}
