//
//  SecondCellVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 01/06/25.
//

import UIKit

class SecondCellVC: UIViewController {

    var screen: SecondCellScreen?
    
    override func loadView() {
        screen = SecondCellScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

}
