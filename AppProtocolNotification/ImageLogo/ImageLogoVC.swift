//
//  ImageLogoVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/11/24.
//

import UIKit

class ImageLogoVC: UIViewController, ImageLogoScreenProtocol {
    
    var screen : ImageLogoScreen? // cria uma variavel do tipo dessa view

    override func viewDidLoad() {
        super.viewDidLoad()
        screen = ImageLogoScreen() // instancia view
        view = screen // atribui a view a esse VC
        screen?.imageLogoScreen(delegate: self) // invoca metodo delegate

        // Do any additional setup after loading the view.
    }
    
    func imageLogoScreen() {
        let login : LoginVC = LoginVC()
        login.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(login, animated: true)
        
    }
   
}
