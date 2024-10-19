//
//  imacVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class imacVC: UIViewController {

    var screen : imacScreen?
    
    override func loadView() {
        screen = imacScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}
