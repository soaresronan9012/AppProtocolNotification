//
//  GoogleVCViewController.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 27/12/24.
//

import UIKit

class GoogleVC: UIViewController, UITextFieldDelegate, SendProtocol {
    func sendApple() {
    }
    func sendGoogle() {
        let send  : EmailSendVC = EmailSendVC()
        send.modalPresentationStyle = .formSheet
        present(send, animated: true)
    }
   
    // herda o delegate
    
    var screen : GoogleScreen?
    
    override func loadView() {
        screen = GoogleScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegateGoogle(delegate: self) // invoca o delegate para a respectiva view
        screen?.delegate = self
        overrideUserInterfaceStyle = .light    }

    
        func textFieldDidBeginEditing(_ textField: UITextField) {  // metodos delegate padrao do sistema
            print(#function)
            if screen?.recoverEmailGoogle.text?.isEmpty == true {
                screen?.recoverEmailGoogle.layer.borderWidth = 0
            }
            
        }
        
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            print(#function)
            
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print(#function)
            textField.resignFirstResponder()// o return do teclado, baixa o teclado
            return false
        }
    
    
}
