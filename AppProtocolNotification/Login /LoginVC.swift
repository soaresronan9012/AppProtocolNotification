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
    }
    
    func tappedButtonProtocol() {
        let device  : DeviceVC = DeviceVC() // instancia a class alvo
        device.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
        navigationController?.pushViewController(device, animated: true)
             }
    }
    
    
