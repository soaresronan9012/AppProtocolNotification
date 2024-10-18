//
//  ViewController.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/10/24.
//

import UIKit

class ViewController: UIViewController, VCScreenButtonProtocol {
    
    var screen : VCScreen? // var do tipo da view
    
    override func loadView() {
        screen = VCScreen()  // instancia a view
        view = screen  // adota ela como a view da viewcontroller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)// invoca metodo protocolo
    }
    
    
    func tappedSelectButton(){
        let device = DeviceVC() // instancia a class alvo
        device.modalPresentationStyle = .pageSheet // customizacao do tamanho de tela
        present(device, animated: true ,completion: nil) // invoca o método
                    }
    
}
