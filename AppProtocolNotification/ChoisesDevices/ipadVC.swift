//
//  ipadVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 21/10/24.
//

import UIKit

class ipadVC: UIViewController, ipadbookScreenButtonProtocol {
    
    
    var screen : ipadScreen?
    
    override func loadView() {
        screen = ipadScreen()
        view = screen
        screen?.delegateReturnButtonFuncIpad( delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
    }
    
    func tappedReturnButtonProtocolipad() {
        // invocando tableView
        let table = TableViewIpadVC()
          table.modalPresentationStyle = .pageSheet
        present(table, animated: true ,completion: nil)
    }
    
    
}
