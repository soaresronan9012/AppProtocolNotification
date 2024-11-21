//
//  LoginVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/11/24.
//

import UIKit

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
        let device  : DeviceVC = DeviceVC() // instancia a class alvo
        device.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
        navigationController?.pushViewController(device, animated: true)
             }
    }
    
extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //método habilita botao return do teclado
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) { // fazer as validações sempre aqui
        screen?.delegateButtonFunc(delegate: self)
        screen?.validaTextField()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        screen?.configDelegateTextField(delegate: self)}

    }

extension LoginVC: recoverButtonProtocol {
    func tappedRecoverButtonProtocol() {
        let recover = RecoverVC()
          recover.modalPresentationStyle = .pageSheet
          present(recover, animated: true ,completion: nil)
    }
}


    