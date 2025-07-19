//
//  Iphone5VC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 19/07/25.
//

import UIKit

class Iphone5VC: UIViewController {

    var screen: Iphone5Screen?
    
    override func loadView() {
        screen = Iphone5Screen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
