//
//  DeviceScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/10/24.
//

import UIKit

protocol macbookProtocol : AnyObject {  // protocolo macbookimage conta
    func macbookTappedProtocol()
    // método do protocolo, irá ser chamado na viewcontroller
    }

protocol imacbookProtocol : AnyObject {  // protocolo imacimage conta
    func imacbookTappedProtocol()
    // método do protocolo, irá ser chamado na viewcontroller
    }

protocol iphoneProtocol : AnyObject {
    func iphoneTappedProtocol()
}

protocol ipadProtocol : AnyObject {
    func ipadTappedProtocol()
}
class DeviceScreen: UIView {
    
    private weak var delegatemacbook : macbookProtocol? // do tipo protocol
         // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
    public func delegatemacbookfunc( delegate: macbookProtocol? ){ // o parametro dessa funcao, sera o delegado, usado na viewcontroller alvo
        self.delegatemacbook = delegate// parametro
            }
    
    private weak var delegateimacbook : imacbookProtocol?
    public func delegateimacbookfunc( delegate: imacbookProtocol? ){
        self.delegateimacbook = delegate
    }
        
    private weak var delegateiphone : iphoneProtocol?
    public func delegateiphonefunc( delegate: iphoneProtocol? ){
        self.delegateiphone = delegate
    }
    
    private weak var delegateipad : ipadProtocol?
    public func delegateipadfunc( delegate: ipadProtocol? ){
        self.delegateipad = delegate
    }
    
    
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
        mac.isUserInteractionEnabled = true // habilita interacao do usuário
        return mac
    }()
    private func setupGestureRecognizer() {  // padrao do sistema
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(macbookImageTapped))
        macImageView.addGestureRecognizer(tapGesture)
                }
        @objc private func macbookImageTapped() { // acao invocada ao ser clicada
            print("imagem macbook clicada!")
            delegatemacbook?.macbookTappedProtocol() // método do protocolo
        }
    
    
    lazy var imacImageView : UIImageView = {
        let imac = UIImageView()
        imac.translatesAutoresizingMaskIntoConstraints = false
        imac.image = UIImage(named: "imac-svgrepo-com" )
        imac.isUserInteractionEnabled = true
        return imac
    }()
    private func setupGestureRecognizerimac() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imacImageTapped))
        imacImageView.addGestureRecognizer(tapGesture)
    }
    @objc private func imacImageTapped() {
        print("imac clicada!")
        delegateimacbook?.imacbookTappedProtocol()
        
    }
    
    
    lazy var iphoneImageView : UIImageView = {
        let iphone = UIImageView()
        iphone.translatesAutoresizingMaskIntoConstraints = false
        iphone.image = UIImage(named: "iphone-svgrepo-com" )
        iphone.isUserInteractionEnabled = true
        return iphone
    }()
    private func setupGestureRecognizeriphone() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(iphoneImageTapped))
        iphoneImageView.addGestureRecognizer(tapGesture)
    }
    @objc private func iphoneImageTapped() {
        print("iphone clicada!")
        delegateiphone?.iphoneTappedProtocol()
    }
    
    lazy var ipadImageView : UIImageView = {
        let ipad = UIImageView()
        ipad.translatesAutoresizingMaskIntoConstraints = false
        ipad.image = UIImage(named: "appstore copy 3" )
        ipad.isUserInteractionEnabled = true // habilita toque na imagem
        return ipad
    }()
    private func setupGestureRecognizeripad() { // metodo padrao de click habilitado em imagens e views
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ipadImageTapped))
            ipadImageView.addGestureRecognizer(tapGesture)
                }
    
        @objc private func ipadImageTapped() { // acao invocada ao ser clicada
            print("imagem macbook clicada!")
            delegateipad?.ipadTappedProtocol() // método do protocolo
        }
    
    
    
    override init ( frame: CGRect){ //Define um parâmetro chamado frame do tipo CGRect. Um CGRect representa um retângulo e define a posição e o tamanho da view na tela.
        super.init(frame: frame)//inicializador pai, passa mesmo frame passado para o inicializador da nossa classe.
        backgroundColor = .systemGray5
        addElements()
        configConstraints()
        setupGestureRecognizer()// metodos de toque das imagens
        setupGestureRecognizerimac()
        setupGestureRecognizeriphone()
        setupGestureRecognizeripad()
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
        addSubview(ipadImageView)
        }
    
    
    private func configConstraints () {
            NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
                
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                macImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
                macImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                macImageView.heightAnchor.constraint(equalToConstant: 100),
                macImageView.widthAnchor.constraint(equalToConstant: 100),
                
                imacImageView.topAnchor.constraint(equalTo: macImageView.bottomAnchor, constant: 50),
                imacImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                imacImageView.heightAnchor.constraint(equalToConstant: 100),
                imacImageView.widthAnchor.constraint(equalToConstant: 100),
                
                iphoneImageView.topAnchor.constraint(equalTo: imacImageView.bottomAnchor, constant: 50),
                iphoneImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                iphoneImageView.heightAnchor.constraint(equalToConstant: 100),
                iphoneImageView.widthAnchor.constraint(equalToConstant: 100),
                
                ipadImageView.topAnchor.constraint(equalTo: iphoneImageView.bottomAnchor, constant: 50),
                ipadImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                ipadImageView.heightAnchor.constraint(equalToConstant: 100),
                ipadImageView.widthAnchor.constraint(equalToConstant: 100),
                ]) }
}
