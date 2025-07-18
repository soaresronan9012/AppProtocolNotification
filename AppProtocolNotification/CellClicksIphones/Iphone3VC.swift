//
//  Iphone3VC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/07/25.
//

import UIKit

class Iphone3VC: UIViewController {

    var screen: Iphone3Screen?
    
    override func loadView() {
        screen = Iphone3Screen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


}
