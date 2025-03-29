//
//  RecoverScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 20/11/24.
//

import UIKit

protocol recoverEmailButtonScreen : AnyObject {
    func tappedRecoverButtonOne()
    func tappedApplelogo()
    func tappedGooglelogo()
}

class RecoverScreen: UIView {
    
    public weak var recoverEmailButtonDelegate: recoverEmailButtonScreen?
    
    public func recoverEmailButtonDelegateFunc( delegate: recoverEmailButtonScreen? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
            self.recoverEmailButtonDelegate = delegate// parametro
            }
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Recover password"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping  // quebra o texto por palavras
        return label
    }()
    
    //lazy var viewline: UIView = {
        //let view = UIView()
        //view.translatesAutoresizingMaskIntoConstraints = false
        //view.backgroundColor = .black
       // return view
   // }()
    
    lazy var emailCreate: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Enter your email"
        text.textColor = .systemGray
        text.keyboardType = .emailAddress
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        //text.isUserInteractionEnabled = true  // habilita interacao de toque
        return text
    }()
    
    lazy var lineView : UIView = { // line
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .black
        return line
        }()
    
    lazy var passwordCreate: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "create your password"
        text.textColor = .systemGray
        text.keyboardType = .numberPad
        text.isSecureTextEntry = true
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        //text.isUserInteractionEnabled = true  // habilita interacao de toque
        return text
    }()
    
    lazy var linePasswordView : UIView = { // line
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .black
        return line
        }()
    
    
    lazy var recoverEmailButton : UIButton = {  // botao onde aparece somente o seu texto
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("create account", for: .normal)
        button.setTitleColor(.systemGray, for: .normal)
        button.backgroundColor = .clear  //remove visual do botao
        button.layer.borderWidth = 0     // remove bordas
        button.addTarget(self, action: #selector(recoverButtonTappet), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    @objc func recoverButtonTappet(){
        print("clicou enviar email ")
        recoverEmailButtonDelegate?.tappedRecoverButtonOne()
        
    }
    
    public func configTextFieldDelegate( delegate:UITextFieldDelegate) { // protocol padrao textfield
        emailCreate.delegate = delegate // elementos a serem validados dentro desse protocol
        passwordCreate.delegate = delegate
        }
    
    public func editionButtonrecover(){ // se o campo estiver vazio faça, se nao, faça
        if emailCreate.text?.isEmpty == false && passwordCreate.text?.isEmpty == false{
            recoverEmailButton.setTitleColor(.black, for: .normal)
            recoverEmailButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
            recoverEmailButton.isEnabled = true
                }
        else {
            recoverEmailButton.setTitleColor(.systemGray, for: .normal)
            recoverEmailButton.isEnabled = false }
        
        // gerador de advertencia visual, caso algum campo fique vazio
        if emailCreate.text?.isEmpty == true {
            emailCreate.layer.borderColor = UIColor.red.cgColor
            emailCreate.layer.borderWidth = 1
            }
        if passwordCreate.text?.isEmpty == true{
            passwordCreate.layer.borderColor = UIColor.red.cgColor
            passwordCreate.layer.borderWidth = 1
            }
    }
    
    
    lazy var labelLogo : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Enter with"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var logoView : UIView = {
        let logo = UIView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.backgroundColor = .systemGray5
        return logo
    }()
    
    lazy var appleLogo : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "apple-173-svgrepo-com")
        image.isUserInteractionEnabled = true
        return image
    }()
    private func setupGestureRecognizerAppleLogo() {  // padrao do sistema, para click em elementos
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(AppleLogoTapped))
        appleLogo.addGestureRecognizer(tapGesture) // nome do elemento invocando
                }
        @objc private func AppleLogoTapped() { // acao invocada ao ser clicada
            print("imagem apple clicada!")
            recoverEmailButtonDelegate?.tappedApplelogo()
             }
    
    
    lazy var googleLogo : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "google-svgrepo-com")
        image.isUserInteractionEnabled = true
        return image
    }()
    private func setupGestureRecognizerGoogleLogo() {  // padrao do sistema, para click em elementos
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(googleLogoTapped))
        googleLogo.addGestureRecognizer(tapGesture) // nome do elemento invocando
                }
        @objc private func googleLogoTapped() { // acao invocada ao ser clicada
            print("imagem google clicada!")
            recoverEmailButtonDelegate?.tappedGooglelogo()             }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        setupConstraints()
        setupDismissKeyboardGesture()
        setupGestureRecognizerAppleLogo() // metodo de click na AppleLogo
        setupGestureRecognizerGoogleLogo() // metodo de click na googleLogo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    // funcao que baixa o teclado ao tocar na tela
    private func setupDismissKeyboardGesture() {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            tapGesture.cancelsTouchesInView = false // Permite que outros gestos ainda sejam processados
        self.addGestureRecognizer(tapGesture)
        
        }
    @objc private func dismissKeyboard() {
        self.endEditing(true) // Fecha o teclado
        if emailCreate.text?.isEmpty == false  {  // se o campo estiver preenchido ok
            emailCreate.layer.borderColor = UIColor.red.cgColor
            emailCreate.layer.borderWidth = 0
            }
        else {  // se nao, coloca uma tarja vermelha
            emailCreate.layer.borderColor = UIColor.red.cgColor
            emailCreate.layer.borderWidth = 1
             }
        
        if passwordCreate.text?.isEmpty == false {
            passwordCreate.layer.borderColor = UIColor.red.cgColor
            passwordCreate.layer.borderWidth = 0
        }
        else{
            passwordCreate.layer.borderColor = UIColor.red.cgColor
            passwordCreate.layer.borderWidth = 1
        }
        
                   }
    
    func addElements() {
        addSubview(titleLabel)
        //addSubview(viewline)
        addSubview(emailCreate)
        addSubview(lineView)
        addSubview(passwordCreate)
        addSubview(linePasswordView)
        addSubview(recoverEmailButton)
        addSubview(labelLogo)
        addSubview(logoView)
        addSubview(appleLogo)
        addSubview(googleLogo)
        }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            //viewline.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            //viewline.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            //viewline.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            //viewline.heightAnchor.constraint(equalToConstant: 1),
            
            emailCreate.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 101),
            emailCreate.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            emailCreate.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            lineView.topAnchor.constraint(equalTo: emailCreate.bottomAnchor, constant: 10),
            lineView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            passwordCreate.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 45),
            passwordCreate.leadingAnchor.constraint(equalTo: emailCreate.leadingAnchor),
            passwordCreate.trailingAnchor.constraint(equalTo: emailCreate.trailingAnchor),
            
            linePasswordView.topAnchor.constraint(equalTo: passwordCreate.bottomAnchor, constant: 10),
            linePasswordView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            linePasswordView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            linePasswordView.heightAnchor.constraint(equalToConstant: 1),
            
            
            recoverEmailButton.topAnchor.constraint(equalTo: linePasswordView.bottomAnchor, constant: 15),
            recoverEmailButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            labelLogo.topAnchor.constraint(equalTo: recoverEmailButton.bottomAnchor, constant: 90),
            labelLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            logoView.topAnchor.constraint(equalTo: labelLogo.bottomAnchor, constant:5),
            //logoView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            //logoView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 80),
            logoView.widthAnchor.constraint(equalToConstant: 170),
            
            appleLogo.topAnchor.constraint(equalTo: logoView.topAnchor, constant: 10),
            appleLogo.leadingAnchor.constraint(equalTo: logoView.leadingAnchor, constant: 40),
            appleLogo.widthAnchor.constraint(equalToConstant: 38),
            appleLogo.heightAnchor.constraint(equalToConstant: 38),
            
            googleLogo.topAnchor.constraint(equalTo: logoView.topAnchor, constant: 11),
            googleLogo.leadingAnchor.constraint(equalTo: appleLogo.trailingAnchor, constant: 18),
            googleLogo.widthAnchor.constraint(equalToConstant: 40),
            googleLogo.heightAnchor.constraint(equalToConstant: 40),
            
            
            
              
                        ])
        
    }
}
