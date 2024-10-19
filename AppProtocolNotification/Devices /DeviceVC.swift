//
//  DeviceVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/10/24.
//

import UIKit

class DeviceVC: UIViewController, macbookProtocol {
    
    var screen : DeviceScreen? // var do tipo da view apontada
    
    override func loadView() { // sempre que se cria uma nova view
        screen = DeviceScreen() // instancia a view apontada
        view = screen
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegatemacbookfunc(delegate: self)
        
    }
    
    
    func macbookTappedProtocol(){
        let macbook = macbookVC() // instancia a class alvo
        macbook.modalPresentationStyle = .pageSheet // customizacao do tamanho de tela
        present(macbook, animated: true ,completion: nil) // invoca o método
    }
                    
    
    

    

}
