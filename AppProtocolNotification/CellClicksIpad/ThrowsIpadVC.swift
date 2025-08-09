//
//  ThrowsIpadVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 08/08/25.
//

import UIKit

class ThrowsIpadVC: UIViewController {

    var screen: ThrowsIpadScreen?
    
    
    override func loadView() {       // quando se cria uma view externa a view da viewController
        screen = ThrowsIpadScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
