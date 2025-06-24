//
//  ThirtyCellVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 23/06/25.
//

import UIKit

class ThirtyCellVC: UIViewController {

    var screen: ThirtyCellScreen?
    
    override func loadView() {
        screen = ThirtyCellScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
