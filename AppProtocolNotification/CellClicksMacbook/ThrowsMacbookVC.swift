//
//  ThrowsMacbookVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/08/25.
//

import UIKit

class ThrowsMacbookVC: UIViewController {
    
    var screen : ThrowsMacbookScreen?
    
    override func loadView() {
        screen = ThrowsMacbookScreen()
        view = screen   
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
