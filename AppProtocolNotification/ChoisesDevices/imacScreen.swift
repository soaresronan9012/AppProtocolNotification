//
//  imacScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

protocol imacbookScreenButtonProtocol : AnyObject {  // cria um Protocolo de Delegação para comunicar com o ViewController
    func tappedReturnButtonProtocolimac() // método do protocolo, irá ser chamado na viewcontroller
    }


class imacScreen: UIView {
    
    private weak var delegateReturnButtonimac : imacbookScreenButtonProtocol?  // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
    public func delegateReturnButtonFuncImac( delegate: imacbookScreenButtonProtocol? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
        self.delegateReturnButtonimac = delegate// parametro
        }
    
    
    // ELEMENTOS
    
    lazy var imacbooklabel: UILabel = {
        let imacbooklabel = UILabel()
        imacbooklabel.translatesAutoresizingMaskIntoConstraints = false
        imacbooklabel.text = "Latest generation iMac equipped with the M3 chip"
        imacbooklabel.textAlignment = .center  // Centraliza o texto no label
        imacbooklabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        imacbooklabel.textColor = .black // Cor do texto
        imacbooklabel.numberOfLines = 0
        return imacbooklabel
        }()
    
    lazy var imacbookImage: UIImageView = {
        let imacbook = UIImageView()
        imacbook.translatesAutoresizingMaskIntoConstraints = false
        imacbook.image = UIImage(named: "imac-svgrepo-com-2" )
        return imacbook
        }()
    
    lazy var imacbuttonReturntButton : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("go table", for: .normal) // texto do botao
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = UIColor.systemGray4 // cor com transparencia
        bt.layer.cornerRadius = 10 // angulo das bordas
        bt.clipsToBounds = true // habilita bordas arredondadas
        bt.layer.borderWidth = 1.0// largura borda
        bt.layer.borderColor = UIColor.black.cgColor // cor da borda
        bt.addTarget(self, action: #selector(tappetReturnButton), for: .touchUpInside)
        return  bt
    }()
    @objc func tappetReturnButton( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
        delegateReturnButtonimac?.tappedReturnButtonProtocolimac()
        
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
        addSubview(imacbookImage)
        addSubview(imacbooklabel)
        addSubview(imacbuttonReturntButton)
        }
    
    func configconstrain() {
        NSLayoutConstraint.activate([
            imacbooklabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            imacbooklabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacbooklabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            imacbooklabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            imacbookImage.topAnchor.constraint(equalTo: imacbooklabel.bottomAnchor, constant: 60),
            imacbookImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacbookImage.heightAnchor.constraint(equalToConstant: 200),
            imacbookImage.widthAnchor.constraint(equalToConstant: 200),
            
            imacbuttonReturntButton.topAnchor.constraint(equalTo: imacbookImage.bottomAnchor, constant: 85),
            imacbuttonReturntButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacbuttonReturntButton.widthAnchor.constraint(equalToConstant: 100),
            imacbuttonReturntButton.heightAnchor.constraint(equalToConstant: 32),
                        ])
    }
    
}
