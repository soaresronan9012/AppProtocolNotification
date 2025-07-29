//
//  ThrowsVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 29/07/25.
//

import UIKit

class ThrowsVC: UIViewController{

    var screen: ThrowsScreen?
    
    override func loadView() {
        screen = ThrowsScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    

}
