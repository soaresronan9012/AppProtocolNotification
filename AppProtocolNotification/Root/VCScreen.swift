//
//  VCScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/10/24.
//

import UIKit

protocol VCScreenButtonProtocol : AnyObject {  // cria um Protocolo de Delegação para comunicar com o ViewController
    func tappedSelectButton() // método do protocolo, irá ser chamado na viewcontroller
    }


class VCScreen: UIView {
    //      weak = fraco, dispensavel da memória apos seu uso
    private weak var delegateButton : VCScreenButtonProtocol?  // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
    public func delegate( delegate: VCScreenButtonProtocol? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
        self.delegateButton = delegate// parametro
        }

    lazy var appleUIImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "apple-svgrepo-com" )?.withRenderingMode(.alwaysTemplate) // habilita a troca de cor da imagem
        image.tintColor = .systemGray // troca a cor da imagem
        return image
    }()
    
    lazy var buttonSelectButton : UIButton = {
        let bt = UIButton() // (type: .system) , ja tem um padrao estabelecido do sistema
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Enter", for: .normal) // texto do botao
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
        bt.setTitleColor(.black, for: .normal) // cor e estilo
        bt.backgroundColor = UIColor.systemGray5 // cor com transparencia, mesma cor da view
        bt.layer.cornerRadius = 10 // angulo das bordas
        bt.clipsToBounds = true // habilita bordas arredondadas
        bt.layer.borderWidth = 1.0// largura borda
        bt.layer.borderColor = UIColor.black.cgColor // cor da borda
        bt.addTarget(self, action: #selector(tappetButtonSelectButton), for: .touchUpInside)
        return  bt
    }()
    @objc func tappetButtonSelectButton( _ sender: UIButton){ // método invocado pela acao do botao, padrao
        print(#function)
        delegateButton?.tappedSelectButton() // ao clicar no botao, o delegado vai chamar o metodo do protocol
                    }
    
    
    override init ( frame: CGRect){ // inicializador padrao
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        configConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")//inicializador necessário para qualquer classe que herda de NSObject ou UIView. Ele é usado quando um objeto é criado a partir de um arquivo de interface (nib ou storyboard).
    }
    
    
    private func addElements () { // método para invocar os elementos para a view
        addSubview(appleUIImage)
        addSubview(buttonSelectButton)
    }
    
    private func configConstraints () {
            NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
                appleUIImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 180),
                appleUIImage.centerXAnchor.constraint(equalTo: centerXAnchor),
                appleUIImage.heightAnchor.constraint(equalToConstant: 200),
                appleUIImage.widthAnchor.constraint(equalToConstant: 200),
                
                buttonSelectButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -105),
                buttonSelectButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                buttonSelectButton.widthAnchor.constraint(equalToConstant: 100),
                buttonSelectButton.heightAnchor.constraint(equalToConstant: 32),
                
                                                    
                ]) }
                                        
}
