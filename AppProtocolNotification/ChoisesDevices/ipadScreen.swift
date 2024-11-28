//
//  ipadScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 21/10/24.
//

import UIKit

protocol ipadbookScreenButtonProtocol : AnyObject {  // cria um Protocolo de Delegação para comunicar com o ViewController
    func tappedReturnButtonProtocolipad() // método do protocolo, irá ser chamado na viewcontroller
    }
class ipadScreen: UIView {
    
    private weak var delegateReturnButtonipad : ipadbookScreenButtonProtocol?  // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
    public func delegateReturnButtonFuncIpad( delegate: ipadbookScreenButtonProtocol? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
        self.delegateReturnButtonipad = delegate// parametro
        }
    
    
    
    lazy var ipadlabel: UILabel = {
        let ipad = UILabel()
        ipad.translatesAutoresizingMaskIntoConstraints = false
        ipad.text = "Latest generation ipad equipped with the iOS 18"
        ipad.textAlignment = .center  // Centraliza o texto no label
        ipad.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        ipad.textColor = .black // Cor do texto
        ipad.numberOfLines = 0
        return ipad
        }()
    
    lazy var ipadImage: UIImageView = {
        let ipad = UIImageView()
        ipad.translatesAutoresizingMaskIntoConstraints = false
        ipad.image = UIImage(named: "appstore copy" )
        return ipad
        }()
    
    lazy var ipadbuttonReturntButton : UIButton = {
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
        bt.addTarget(self, action: #selector(tappetReturnButtonipad), for: .touchUpInside)
        return  bt
    }()
    @objc func tappetReturnButtonipad( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
        delegateReturnButtonipad?.tappedReturnButtonProtocolipad()
        
    }
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor =  .systemGray4
        addElements()
        configConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func addElements () { // método para invocar os elementos para a view
        addSubview(ipadlabel)
        addSubview(ipadImage)
        addSubview(ipadbuttonReturntButton)
    }
    
    private func configConstraints () {
            NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
                ipadlabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
                ipadlabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                ipadlabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
                ipadlabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
                
                ipadImage.topAnchor.constraint(equalTo: ipadlabel.bottomAnchor, constant: 60),
                ipadImage.centerXAnchor.constraint(equalTo: centerXAnchor),
                ipadImage.heightAnchor.constraint(equalToConstant: 200),
                ipadImage.widthAnchor.constraint(equalToConstant: 200),
                
                ipadbuttonReturntButton.topAnchor.constraint(equalTo: ipadImage.bottomAnchor, constant: 65),
                ipadbuttonReturntButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                ipadbuttonReturntButton.widthAnchor.constraint(equalToConstant: 100),
                ipadbuttonReturntButton.heightAnchor.constraint(equalToConstant: 32),
                ]) }
    
    
    
}
    
    
