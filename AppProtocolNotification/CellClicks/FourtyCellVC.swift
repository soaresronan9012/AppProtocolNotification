//
//  FourtyCellVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 15/07/25.
//

import UIKit

class FourtyCellVC: UIViewController {

    var screen: FourtyCellScreen?
    
    override func loadView() {
        screen = FourtyCellScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


}
