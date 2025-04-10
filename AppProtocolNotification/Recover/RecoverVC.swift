//
//  RecoverVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 20/11/24.
//

import UIKit
import FirebaseAuth // biblioteca responsavel por autentificacao

class RecoverVC: UIViewController, UITextFieldDelegate, recoverEmailButtonScreen {
    
    
    var auth: Auth?  // var do tipo autentificacao
    
    var screen : RecoverScreen?
    
    override func loadView() {
        screen = RecoverScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegate(delegate: self) // invocando delegate padrao de uitextfield
        screen?.recoverEmailButtonDelegate = self // invoca delegate do button recoverEmail
        auth = Auth.auth() // instancia da var authentic do firebase
        overrideUserInterfaceStyle = .light
    }
    
//    func createAccountFirebase() { // funcao de criacao de conta no FIREBASE
        // pega os valores contidos nesses campos
//        let email: String = screen?.emailCreate.text ?? ""
//        let passwordCreate = screen?.passwordCreate.text ?? ""
        
        
//        auth?.createUser(withEmail: email, password: passwordCreate, completion: { ( result, error)in
//            if  error != nil {
//                print("Erro ao criar conta")
//            }
//            print("Conta criada com sucesso")
//        } ) }
        
        
    func tappedRecoverButtonOne() {  // botao que cria a conta no FIREBASE
        let mensage  : MensagemVC = MensagemVC() // instancia a class alvo
        mensage.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
        present(mensage, animated: true)
        
        let email: String = screen?.emailCreate.text ?? ""
        let password: String = screen?.passwordCreate.text ?? ""
        
        
        auth?.createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Erro ao criar conta: \(error.localizedDescription)")
            } else {
                print("Conta criada com sucesso")
            }
        }

    }
        
        func tappedApplelogo() {
            let logo  : AppleLogoVC = AppleLogoVC() // instancia a class alvo
            logo.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
            //present(device, animated: true ,completion: nil) // invoca o método
            present(logo, animated: true)
        }
        
        func tappedGooglelogo() {
            let logoView  : GoogleVC = GoogleVC()
            logoView.modalPresentationStyle = .formSheet
            present(logoView, animated: true)
        }
        
        
        
        
        // extensao ao protocol
        func textFieldDidBeginEditing(_ textField: UITextField) {
            print(#function)
            habilitField()
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
        
        func  habilitField () {  // funcao que desabilita advertencia de campo incompleto
            if screen?.passwordCreate.text?.isEmpty == true{
                //screen?.textName.layer.borderColor = UIColor.red.cgColor
                screen?.passwordCreate.layer.borderWidth = 0
            }
            if screen?.emailCreate.text?.isEmpty == true {
                //screen?.textPassword.layer.borderColor = UIColor.red.cgColor
                screen?.emailCreate.layer.borderWidth = 0        }
        }
    }
    

