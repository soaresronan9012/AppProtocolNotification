//
//  IphoneXVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 21/07/25.
//

import UIKit

class IphoneXVC: UIViewController {

    var screen: IphoneXScreen?
    
    override func loadView() {
        screen = IphoneXScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }}
