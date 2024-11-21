//
//  RecoverVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 20/11/24.
//

import UIKit

class RecoverVC: UIViewController {
    
    var screen : RecoverScreen?
    
    override func loadView() {
        screen = RecoverScreen()
        view = screen!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
}
