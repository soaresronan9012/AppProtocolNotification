//
//  LoginVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/11/24.
//

import UIKit

class LoginVC: UIViewController {
    
    var screen: LoginView?
    
    override func loadView() {
        screen = LoginView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
