//
//  MensagemVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/12/24.
//

import UIKit

class MensagemVC: UIViewController, labelProtocol {
    
    

    var screen : MensagemScreen?
    
    override func loadView() {
        screen = MensagemScreen()
        view = screen!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self
        overrideUserInterfaceStyle = .light
    }
    
    func labelreturn() {
        //dismiss( animated: true, completion: nil)
        let lg = LoginVC()
          lg.modalPresentationStyle = .pageSheet
        present(lg, animated: true ,completion: nil)   }
}
