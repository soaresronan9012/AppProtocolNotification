//
//  IpadThirtyScreenVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 08/08/25.
//

import UIKit

class IpadThirtyScreenVC: UIViewController {

    var screen: IpadThirtyScreen?
    
    override func loadView() {
        screen = IpadThirtyScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
