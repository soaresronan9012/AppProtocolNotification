//
//  macbookVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class macbookVC: UIViewController {
    
    var screen : macbookScreen?
    
    override func loadView() {
        screen = macbookScreen()
        view = screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    


}
