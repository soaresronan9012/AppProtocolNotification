//
//  DeviceVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/10/24.
//

import UIKit

class DeviceVC: UIViewController, macbookProtocol, imacbookProtocol, iphoneProtocol {
    
    var screen : DeviceScreen? // var do tipo da view apontada
    
    override func loadView() { // sempre que se cria uma nova view
        screen = DeviceScreen() // instancia a view apontada
        view = screen
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegatemacbookfunc(delegate: self)
        screen?.delegateimacbookfunc(delegate: self)
        screen?.delegateiphonefunc(delegate: self)
    }
    
    
    func macbookTappedProtocol(){
        let macbook = macbookVC() // instancia a class alvo
        macbook.modalPresentationStyle = .pageSheet // customizacao do tamanho de tela
        present(macbook, animated: true ,completion: nil) // invoca o método
    }
    
    func imacbookTappedProtocol() {
        let imac = imacVC()
        imac.modalPresentationStyle = .pageSheet
        present(imac, animated: true ,completion: nil)
    }
    
    func iphoneTappedProtocol() {
        let iphone = iphoneVC()
        iphone.modalPresentationStyle = .pageSheet
        present(iphone, animated: true ,completion: nil)
    }
                    
    
    

    

}
