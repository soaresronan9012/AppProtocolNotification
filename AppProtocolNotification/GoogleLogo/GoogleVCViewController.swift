//
//  GoogleVCViewController.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 27/12/24.
//

import UIKit

class GoogleVC: UIViewController {
    
    var screen : GoogleScreen?

    override func viewDidLoad() {
        super.viewDidLoad()
        screen = GoogleScreen()
        view = screen
    }
    

    
}
