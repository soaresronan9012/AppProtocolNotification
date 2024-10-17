//
//  ViewController.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/10/24.
//

import UIKit

class ViewController: UIViewController {

    var screen : VCScreen? // var do tipo da view
    
    override func loadView() {
        screen = VCScreen()  // instancia a view
        view = screen  // adota ela como a view da viewcontroller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

