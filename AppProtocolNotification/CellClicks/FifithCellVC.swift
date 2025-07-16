//
//  FifithCellVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/07/25.
//

import UIKit

class FifithCellVC: UIViewController {

    var screen: FifithCellScreen?
    
    override func loadView() {
        screen = FifithCellScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
