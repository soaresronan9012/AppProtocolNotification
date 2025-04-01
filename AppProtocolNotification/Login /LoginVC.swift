//
//  LoginVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/11/24.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController, loginViewProtocol {
    
    var screen: LoginView?
    
    override func loadView() {
        screen = LoginView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegateButtonFunc(delegate: self)// invoca metodo que habilita delegate
        screen?.configDelegateTextField(delegate: self)  // invoca metodo que habilita esse delegate
        screen?.delegateRecoverButtonFunc(delegate: self) // metodo que habilita delegate do recoverpassword
    }
    
    func tappedButtonProtocol() {
        
        
        let email: String = screen?.textName.text ?? ""
        let password: String = screen?.textPassword.text ?? ""

        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Erro ao criar conta: \(error.localizedDescription)")
                } else {
                    print("Conta criada com sucesso!")
                    let device  : DeviceVC = DeviceVC() // instancia a class alvo
                    device.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
                    //present(device, animated: true ,completion: nil) // invoca o método
                    self.navigationController?.pushViewController(device, animated: true)                } }
        
             }
    }
    
extension LoginVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //método habilita botao return do teclado
        textField.resignFirstResponder() // padrao do metodo
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) { // fazer as validações sempre aqui
        screen?.delegateButtonFunc(delegate: self)
        screen?.callValidaTextField() // funcao que consta a validacao
    }
    
    func  habilitField () {  // funcao que desabilita advertencia de campo incompleto
        if screen?.textName.text?.isEmpty == true{
            //screen?.textName.layer.borderColor = UIColor.red.cgColor
            screen?.textName.layer.borderWidth = 0
        }
        if screen?.textPassword.text?.isEmpty == true {
            //screen?.textPassword.layer.borderColor = UIColor.red.cgColor
            screen?.textPassword.layer.borderWidth = 0        }
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) { // quando inicia a digitacao
        screen?.configDelegateTextField(delegate: self)
        habilitField() // invoca a funcao que limpa advertecia
    }
    
   
}

extension LoginVC: recoverButtonProtocol {
    func tappedRecoverButtonProtocol() {
        let recover = RecoverVC()
          recover.modalPresentationStyle = .pageSheet
          present(recover, animated: true ,completion: nil)
    }
}


    
