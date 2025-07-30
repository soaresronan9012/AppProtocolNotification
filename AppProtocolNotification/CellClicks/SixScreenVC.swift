//
//  SixScreenVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 30/07/25.
//

import UIKit

class SixScreenVC: UIViewController {

    var screen: SixScreen?  // cria uma var do tipo da view que irá utilizar
    
    override func loadView() {  // quando se cria uma view e nao usa a da propria VC
        screen = SixScreen() // instancia a view alvo
        view = screen  // atribui a view alvo a view da VC default
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


}
