//
//  InformationVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/11/24.
//

import UIKit

class InformationVC: UIViewController, acessButtonProtocol {
    
    
    var screem : InformationScreen?
    
    override func loadView() {
        screem = InformationScreen()
        view = screem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screem?.acessButtonDelegate = self // delegate de forma mais enxuta
        overrideUserInterfaceStyle = .light
        
        // Do any additional setup after loading the view.
    }
    
    func acessButtonTapped(){
        let login : LoginVC = LoginVC()
        //login.modalPresentationStyle = .formSheet
        //navigationController?.pushViewController(login, animated: true)    }
        
        login.modalPresentationStyle = .pageSheet
        navigationController?.pushViewController(login, animated: true)
    }
}
