//
//  imacVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class imacVC: UIViewController, imacbookScreenButtonProtocol { // extende para o tipo de protocol

    var screen : imacScreen?
    
    override func loadView() {
        screen = imacScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegateReturnButtonFuncImac(delegate: self) // passa a view como parametro dessa func do protocol
        overrideUserInterfaceStyle = .light
        }

    
    func tappedReturnButtonProtocolimac() {  // metodo do protocolo
        dismiss(animated: true, completion: nil)
        //só funciona em viewController
    }
    

    
}
