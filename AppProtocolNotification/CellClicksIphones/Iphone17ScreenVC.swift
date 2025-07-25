//
//  Iphone17ScreenVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 25/07/25.
//

import UIKit

class Iphone17ScreenVC: UIViewController {

    var screen: Iphone17Screen?
    
    override func loadView() {
        screen = Iphone17Screen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


}
