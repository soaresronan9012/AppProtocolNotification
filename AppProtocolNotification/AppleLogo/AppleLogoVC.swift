//
//  AppleLogoVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 26/12/24.
//

import UIKit

class AppleLogoVC: UIViewController {
    
    var screen : AppleLogoScreen? // cria var do tipo da view
    
    override func loadView() {
        screen = AppleLogoScreen() // atribui a view alvo para a var do mesmo tipo
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
