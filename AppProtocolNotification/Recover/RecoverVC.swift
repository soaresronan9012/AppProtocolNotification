//
//  RecoverVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 20/11/24.
//

import UIKit

class RecoverVC: UIViewController, UITextFieldDelegate, recoverEmailButtonScreen {
    
    
    var screen : RecoverScreen?
    
    override func loadView() {
        screen = RecoverScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegate(delegate: self) // invocando delegate padrao de uitextfield
        screen?.recoverEmailButtonDelegate = self // invoca delegate do button recoverEmail
        
    }
   
    
    func tappedRecoverButtonOne() {
        let mensage  : MensagemVC = MensagemVC() // instancia a class alvo
        mensage.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
        present(mensage, animated: true)
             }
    
    func tappedApplelogo() {
        let logo  : AppleLogoVC = AppleLogoVC() // instancia a class alvo
        logo.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
        present(logo, animated: true)
             }    
    
    
    
    
    // extensao ao protocol
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        if screen?.recoverEmail.text?.isEmpty == true {  // validacao ao clicar, retira legenda vermelha
            screen?.recoverEmail.layer.borderColor = UIColor.red.cgColor
            screen?.recoverEmail.layer.borderWidth = 0
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        screen?.editionButtonrecover() // validacao do campo
    }

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()// o return do teclado, baixa o teclado
        return false
    }
    
}
