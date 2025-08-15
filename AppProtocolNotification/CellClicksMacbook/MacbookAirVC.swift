//
//  MacbookAirVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/08/25.
//

import UIKit

class MacbookAirVC: UIViewController {

    var screen: MacbookAirScreen?
    
    override func loadView() {
        screen = MacbookAirScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
