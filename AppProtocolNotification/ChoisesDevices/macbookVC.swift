//
//  macbookVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class macbookVC: UIViewController, macbookScreenButtonProtocol {
    
    
    
    var screen : macbookScreen?
    
    override func loadView() {
        screen = macbookScreen()
        view = screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegateReturnButtonFunc(delegate: self)
        overrideUserInterfaceStyle = .light    }
    
    
    func tappedReturnButtonProtocol() {
        dismiss(animated: true, completion: nil)        //let device = DeviceVC() // instancia a class alvo
        //device.modalPresentationStyle = .pageSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
         }

}
