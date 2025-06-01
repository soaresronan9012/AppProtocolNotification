//
//  FirstCellVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 31/05/25.
//

import UIKit

class FirstCellVC: UIViewController {

    var screen: FirstCellScreen?
    
    override func loadView() {
        screen = FirstCellScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
}
