//
//  InformationScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/11/24.
//

import UIKit

protocol acessButtonProtocol: AnyObject {
    func acessButtonTapped()
}

class InformationScreen: UIView {
    
    weak var acessButtonDelegate: acessButtonProtocol?
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello dev!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var imageHead : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pexels-harold-vasquez-853421-2653362")
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.contentMode = .scaleAspectFit  // habilita se a imagem ira distorcer ou não
        image.clipsToBounds = true
        image.layer.cornerRadius = 20 // bordas arreondadas
        return image
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to the information page about the Apple information system! Here you can find out about the main topics of the moment in this programming universe."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var buttonAcess : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Acess", for: .normal) // texto do botao
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
        bt.setTitleColor(.black, for: .normal) // cor e estilo
        bt.backgroundColor = UIColor.systemGray5 // cor com transparencia, mesma cor da view
        bt.layer.cornerRadius = 10 // angulo das bordas
        bt.clipsToBounds = true // habilita bordas arredondadas
        bt.layer.borderWidth = 1.0// largura borda
        bt.layer.borderColor = UIColor.black.cgColor // cor da borda
        bt.addTarget(self, action: #selector(tappetButtonAcesstButton), for: .touchUpInside)
        return  bt
    }()
    @objc func tappetButtonAcesstButton( _ sender: UIButton){ // método invocado pela acao do botao, padrao
        print(#function)
        acessButtonDelegate?.acessButtonTapped()
        
        }
    
    
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        backgroundColor = .systemGray5
        addElement()
        configConstraints()
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElement() {
        addSubview(titleLabel)
        addSubview(imageHead)
        addSubview(textLabel)
        addSubview(buttonAcess)
        
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            //titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            //titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            imageHead.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            imageHead.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageHead.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            //imageHead.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageHead.heightAnchor.constraint(equalToConstant:150),
            //imageHead.widthAnchor.constraint(equalToConstant: 750),
            
            textLabel.topAnchor.constraint(equalTo: imageHead.bottomAnchor, constant: 50),
            textLabel.leadingAnchor.constraint(equalTo:titleLabel.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            buttonAcess.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 30),
            buttonAcess.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonAcess.widthAnchor.constraint(equalToConstant: 100),
            buttonAcess.heightAnchor.constraint(equalToConstant: 32),            ])
    }
    
}
