//
//  File.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 09/04/25.
//

import Foundation
import UIKit

class Alert:NSObject{
    
    var controller : UIViewController  // var do tipo controller
    
    init(controller: UIViewController) { // inicializador que recebe uma ViewController
        self.controller = controller
    }
    
    // funcao que pega a mensagem e titulo do alert como uma acao opcional
    func getAlert (titulo:String, mensagem:String, complemento:(()->Void)? = nil){
        //caixa externa de alert, layout padrao
        let alertController = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        // botao cancelar , com titulo e estilo, dentro da caixa de alert
        let cancelar = UIAlertAction(title: "ok", style: .cancel) { acao in
            complemento?()
        }
        
        alertController.addAction(cancelar)
        self.controller.present(alertController, animated: true, completion: nil)
        
    }
    
}
