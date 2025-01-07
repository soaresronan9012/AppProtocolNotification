//
//  iphoneScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

protocol iphonebookScreenButtonProtocol : AnyObject {  // cria um Protocolo de Delegação para comunicar com o ViewController
    func tappedReturnButtonProtocoliphone() // método do protocolo, irá ser chamado na viewcontroller
    }

class iphoneScreen: UIView {
    
    private weak var delegateReturnButtoniphone : iphonebookScreenButtonProtocol?  // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
    public func delegateReturnButtonFuncIphone( delegate: iphonebookScreenButtonProtocol? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
        self.delegateReturnButtoniphone = delegate// parametro
        }
    lazy var iphonelabel: UILabel = {
        let iphone = UILabel()
        iphone.translatesAutoresizingMaskIntoConstraints = false
        iphone.text = "Latest generation iphone equipped with the iOS 18"
        iphone.textAlignment = .center  // Centraliza o texto no label
        iphone.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        iphone.textColor = .black // Cor do texto
        iphone.numberOfLines = 0
        return iphone
        }()
    
    lazy var iphoneImage: UIImageView = {
        let iphone = UIImageView()
        iphone.translatesAutoresizingMaskIntoConstraints = false
        iphone.image = UIImage(named: "iphone-svgrepo-com-2" )
        return iphone
        }()
    
    lazy var iphonebuttonReturntButton : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Return", for: .normal) // texto do botao
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = UIColor.systemGray4 // cor com transparencia
        bt.layer.cornerRadius = 10 // angulo das bordas
        bt.clipsToBounds = true // habilita bordas arredondadas
        bt.layer.borderWidth = 1.0// largura borda
        bt.layer.borderColor = UIColor.black.cgColor // cor da borda
        bt.addTarget(self, action: #selector(tappetReturnButtoniphone), for: .touchUpInside)
        return  bt
    }()
    @objc func tappetReturnButtoniphone( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
        delegateReturnButtoniphone?.tappedReturnButtonProtocoliphone()
        
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray4
        addElements()
        configconstrain()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(iphonelabel)
        addSubview(iphoneImage)
        addSubview(iphonebuttonReturntButton)
        }
    
    func configconstrain() {
        NSLayoutConstraint.activate([
            iphonelabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            iphonelabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            iphonelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            iphonelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            iphoneImage.topAnchor.constraint(equalTo: iphonelabel.bottomAnchor, constant: 60),
            iphoneImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            iphoneImage.heightAnchor.constraint(equalToConstant: 200),
            iphoneImage.widthAnchor.constraint(equalToConstant: 200),
            
            iphonebuttonReturntButton.topAnchor.constraint(equalTo: iphoneImage.bottomAnchor, constant: 85),
            iphonebuttonReturntButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            iphonebuttonReturntButton.widthAnchor.constraint(equalToConstant: 100),
            iphonebuttonReturntButton.heightAnchor.constraint(equalToConstant: 32),
                                   ])
    }
}
