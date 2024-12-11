//
//  MensagemVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/12/24.
//

import UIKit

class MensagemVC: UIViewController {

    var screen : MensagemScreen?
    
    override func loadView() {
        screen = MensagemScreen()
        view = screen!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
