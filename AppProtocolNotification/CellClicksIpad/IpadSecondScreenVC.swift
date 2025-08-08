//
//  IpadSecondScreenVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/08/25.
//

import UIKit

class IpadSecondScreenVC: UIViewController {

    var screen: IpadSecondScreen?
    
    override func loadView() {
        screen = IpadSecondScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
