//
//  MacbookProM4VC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/08/25.
//

import UIKit

class MacbookProM4VC: UIViewController {

    var screen: MacbookProM4Screen?
    
    override func loadView() {
        screen = MacbookProM4Screen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
