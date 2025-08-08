//
//  IpadFirstScreenVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/08/25.
//

import UIKit

class IpadFirstScreenVC: UIViewController {

    var screen: IpadFirstScreen?
    
    override func loadView() {
        screen = IpadFirstScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
