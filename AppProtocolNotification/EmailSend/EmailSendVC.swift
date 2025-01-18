//
//  EmailSendVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/01/25.
//

import UIKit

class EmailSendVC: UIViewController {
    
    var screen: EmailSendScreen?
    
    override func loadView() {
        screen = EmailSendScreen()
        view = screen!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
