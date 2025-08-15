//
//  MacbookProVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/08/25.
//

import UIKit

class MacbookProVC: UIViewController {

    var screen: MacbookProScreen?
    
    override func loadView() {
        screen = MacbookProScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
