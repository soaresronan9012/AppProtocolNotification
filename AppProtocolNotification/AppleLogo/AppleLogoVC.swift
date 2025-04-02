//
//  AppleLogoVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 26/12/24.
//

import UIKit

class AppleLogoVC: UIViewController, UITextFieldDelegate, SendProtocol {
    
    var screen : AppleLogoScreen? // cria var do tipo da view
    
    override func loadView() {
        screen = AppleLogoScreen() // atribui a view alvo para a var do mesmo tipo
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegateApple(delegate: self) // invoca metodo delegate e atribui a esta view
        screen?.delegate = self // atribuiu o delegate a esta viewcontroller
        overrideUserInterfaceStyle = .light    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {  // metodos delegate padrao do sistema
        print(#function)
        if screen?.recoverEmailApple.text?.isEmpty == true {
            screen?.recoverEmailApple.layer.borderWidth = 0
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
    
    func sendApple() {
        let send  : EmailSendVC = EmailSendVC()
        send.modalPresentationStyle = .formSheet
        present(send, animated: true)
    }
    func sendGoogle() {
        
    }
    

    

}
