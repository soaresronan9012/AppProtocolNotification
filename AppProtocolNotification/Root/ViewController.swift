//
//  ViewController.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/10/24.
//

import UIKit

class ViewController: UIViewController, VCScreenButtonProtocol, appleUIImageProtocol {
    
    var screen : VCScreen? // var do tipo da view
    
    override func loadView() {
        screen = VCScreen()  // instancia a view
        view = screen  // adota ela como a view da viewcontroller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)// invoca metodo protocolo
        screen?.delegateImage(delegate: self) // invoca metodo protocolo
        configobserver()
    }
    
    func configobserver(){ // funcao que sera do observador da notification center
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook(notification:)), name: Notification.Name("macbook"), object: nil)
        // notificationcenter do tipo observador, self pois sera atribuida aqui mesmo, updatemacbook sera o metodo invocado, name sera o nome da senha dada na criacao da notification center
    }
    @objc func updateMacbook(notification: NSNotification){
        // view.backgroundColor = .cyan          //notification.object as? UIColor
        // ao ser chamada, o fundo se orienta pela acao da notification  as? = um do tipo UIColor
    }
    
    
     //deinit { // remove a notification center
    //   NotificationCenter.default.removeObserver(self, name: Notification.Name("macbook"), object: nil)
   // }

    
    func tappedSelectButton(){
        let device  : DeviceVC = DeviceVC() // instancia a class alvo
        device.modalPresentationStyle = .formSheet // customizacao do tamanho de tela
        //present(device, animated: true ,completion: nil) // invoca o método
        navigationController?.pushViewController(device, animated: true)
             }
    
    func tappedImage(){
        let device : ImageLogoVC = ImageLogoVC()
        device.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(device, animated: true)
        
    }
    
}
