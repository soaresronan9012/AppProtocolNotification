//
//  Iphone13VC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 25/07/25.
//

import UIKit

class Iphone13VC: UIViewController {

    var screen: Iphone13Screen?
    
    override func loadView() {
        screen = Iphone13Screen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
