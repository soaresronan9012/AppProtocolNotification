//
//  macbookScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

protocol macbookScreenButtonProtocol : AnyObject {  // cria um Protocolo de Delegação para comunicar com o ViewController
    func tappedReturnButtonProtocol() // método do protocolo, irá ser chamado na viewcontroller
    }


class macbookScreen: UIView {
    
    
    private weak var delegateReturnButton : macbookScreenButtonProtocol?  // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
    public func delegateReturnButtonFunc( delegate: macbookScreenButtonProtocol? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
        self.delegateReturnButton = delegate// parametro
        }
    
    lazy var macbookImage: UIImageView = {
        let macbook = UIImageView()
        macbook.translatesAutoresizingMaskIntoConstraints = false
        macbook.image = UIImage(named: "imac" )
        return macbook
    }()
    
    lazy var macbooklabel: UILabel = {
        let macbooklabel = UILabel()
        macbooklabel.translatesAutoresizingMaskIntoConstraints = false
        macbooklabel.text = "Latest generation Macbook equipped with the M3 chip"
        macbooklabel.textAlignment = .center  // Centraliza o texto no label
        macbooklabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        macbooklabel.textColor = .black // Cor do texto
        macbooklabel.numberOfLines = 0
        return macbooklabel
        
    }()
    
    lazy var buttonReturntButton : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Return", for: .normal) // texto do botao
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = UIColor.systemGray5 // cor com transparencia
        bt.layer.cornerRadius = 10 // angulo das bordas
        bt.clipsToBounds = true // habilita bordas arredondadas
        bt.layer.borderWidth = 1.0// largura borda
        bt.layer.borderColor = UIColor.black.cgColor // cor da borda
        bt.addTarget(self, action: #selector(tappetReturnButton), for: .touchUpInside)
        return  bt
    }()
    @objc func tappetReturnButton( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
        delegateReturnButton?.tappedReturnButtonProtocol()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        configConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addElements () { // método para invocar os elementos para a view
        addSubview(macbookImage)
        addSubview(macbooklabel)
        addSubview(buttonReturntButton)
    }
    
    private func configConstraints () {
        NSLayoutConstraint.activate([
            
            macbooklabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            macbooklabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbooklabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            macbooklabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            macbookImage.topAnchor.constraint(equalTo: macbooklabel.bottomAnchor, constant: 60),
            macbookImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbookImage.heightAnchor.constraint(equalToConstant: 200),
            macbookImage.widthAnchor.constraint(equalToConstant: 200),
            
            buttonReturntButton.topAnchor.constraint(equalTo: macbookImage.bottomAnchor, constant: 55),
            buttonReturntButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonReturntButton.widthAnchor.constraint(equalToConstant: 100),
            buttonReturntButton.heightAnchor.constraint(equalToConstant: 32),
            
        ])
    }
    
}

