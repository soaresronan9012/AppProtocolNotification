//
//  DeviceVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/10/24.
//

import UIKit

class DeviceVC: UIViewController {
    
    var screen : DeviceScreen?
    
    override func loadView() {
        screen = DeviceScreen()
        view = screen
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    

    

}
