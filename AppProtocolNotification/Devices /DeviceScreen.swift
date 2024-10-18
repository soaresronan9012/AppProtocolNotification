//
//  DeviceScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/10/24.
//

import UIKit

class DeviceScreen: UIView {
    
    lazy var titleLabel : UILabel = {
        let text = UILabel()
        text.text = "Choise"  // Define o texto do label
        text.textAlignment = .center  // Centraliza o texto no label
        text.font = UIFont.systemFont(ofSize: 34, weight: .bold)  // Define a fonte e o tamanho
        text.textColor = .black // Cor do texto
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var macImageView : UIImageView = {
        let mac = UIImageView()
        mac.translatesAutoresizingMaskIntoConstraints = false
        mac.image = UIImage(named: "laptop-macbook-svgrepo-com" )
        return mac
    }()
    
    lazy var imacImageView : UIImageView = {
        let imac = UIImageView()
        imac.translatesAutoresizingMaskIntoConstraints = false
        imac.image = UIImage(named: "imac-svgrepo-com" )
        return imac
    }()
    
    lazy var iphoneImageView : UIImageView = {
        let iphone = UIImageView()
        iphone.translatesAutoresizingMaskIntoConstraints = false
        iphone.image = UIImage(named: "iphone-svgrepo-com" )
        return iphone
    }()
    
    
    override init ( frame: CGRect){ //Define um parâmetro chamado frame do tipo CGRect. Um CGRect representa um retângulo e define a posição e o tamanho da view na tela.
        super.init(frame: frame)//Chama o inicializador da classe pai, passando o mesmo frame que foi passado para o inicializador da nossa classe.
        backgroundColor = .systemGray6
        addElements()
        configConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    
    
    private func addElements () { // método para invocar os elementos para a view
        addSubview(titleLabel)
        addSubview(macImageView)
        addSubview(macImageView)
        addSubview(imacImageView)
        addSubview(iphoneImageView)
        
        
    }
    
    private func configConstraints () {
            NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
                
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                macImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 80),
                macImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                macImageView.heightAnchor.constraint(equalToConstant: 100),
                macImageView.widthAnchor.constraint(equalToConstant: 100),
                
                imacImageView.topAnchor.constraint(equalTo: macImageView.bottomAnchor, constant: 60),
                imacImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                imacImageView.heightAnchor.constraint(equalToConstant: 100),
                imacImageView.widthAnchor.constraint(equalToConstant: 100),
                
                iphoneImageView.topAnchor.constraint(equalTo: imacImageView.bottomAnchor, constant: 60),
                iphoneImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                iphoneImageView.heightAnchor.constraint(equalToConstant: 100),
                iphoneImageView.widthAnchor.constraint(equalToConstant: 100),
                ]) }
}
