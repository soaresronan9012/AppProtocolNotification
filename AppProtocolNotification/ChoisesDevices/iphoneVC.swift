//
//  iphoneVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class iphoneVC: UIViewController, iphonebookScreenButtonProtocol {

    var screen : iphoneScreen?
    
    override func loadView() {
        screen = iphoneScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegateReturnButtonFuncIphone( delegate: self)
        overrideUserInterfaceStyle = .light
        }

        
    func tappedReturnButtonProtocoliphone() {
        dismiss( animated: true, completion: nil)
    }

    
}
