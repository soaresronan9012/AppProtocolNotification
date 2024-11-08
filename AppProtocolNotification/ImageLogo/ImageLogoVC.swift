//
//  ImageLogoVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/11/24.
//

import UIKit

class ImageLogoVC: UIViewController {
    
    var screen : ImageLogoScreen?

    override func viewDidLoad() {
        super.viewDidLoad()
        screen = ImageLogoScreen()
        view = screen

        // Do any additional setup after loading the view.
    }
    

   
}
