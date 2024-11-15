//
//  InformationVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/11/24.
//

import UIKit

class InformationVC: UIViewController {
    
    
    var screem : InformationScreen?
    
    override func loadView() {
        screem = InformationScreen()
        view = screem
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    

}
