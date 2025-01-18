//
//  GoogleScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 27/12/24.
//

import UIKit

class GoogleScreen: UIView {

    lazy var googleImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "google-svgrepo-com")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var labelGoogleImage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Enter your Google Account"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var recoverEmailGoogle: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Enter your google email"
        text.textColor = .systemGray
        text.keyboardType = .emailAddress
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        //text.isUserInteractionEnabled = true  // habilita interacao de toque
        return text
    }()
    
    lazy var lineTextfieldGoogle : UIView = { // line
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .black
        return line
        }()
    
    lazy var recoverEmailButtonGoogle : UIButton = {  // botao onde aparece somente o seu texto
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send email", for: .normal)
        button.setTitleColor(.systemGray, for: .normal)
        button.backgroundColor = .clear  //remove visual do botao
        button.layer.borderWidth = 0     // remove bordas
        button.addTarget(self, action: #selector(recoverButtonTappet), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    @objc private func recoverButtonTappet() { // método ao clicar no botao
        print("recover button tapped")
        }
    
    
    public func configTextFieldDelegateGoogle( delegate:UITextFieldDelegate) { // protocol padrao textfield
        recoverEmailGoogle.delegate = delegate // elementos a serem validados dentro desse protocol
        }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        configConstraints()
        setupDismissKeyboardGesture()
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
        if recoverEmailGoogle.text?.isEmpty == false {  // se o campo estiver preenchido ok
            recoverEmailGoogle.layer.borderWidth = 0
            recoverEmailButtonGoogle.setTitleColor(.black, for: .normal)
            recoverEmailButtonGoogle.isEnabled = true
        }
        else {  // se nao, coloca uma tarja vermelha
            recoverEmailGoogle.layer.borderColor = UIColor.red.cgColor
            recoverEmailGoogle.layer.borderWidth = 1
            recoverEmailButtonGoogle.setTitleColor(.systemGray, for: .normal)
            recoverEmailButtonGoogle.isEnabled = false
        }
                   }
    
    func addElements() {
        addSubview(googleImage)
        addSubview(labelGoogleImage)
        addSubview(recoverEmailGoogle)
        addSubview(lineTextfieldGoogle)
        addSubview(recoverEmailButtonGoogle)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            googleImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            googleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            googleImage.widthAnchor.constraint(equalToConstant: 90),
            googleImage.heightAnchor.constraint(equalToConstant: 90),
            
            labelGoogleImage.topAnchor.constraint(equalTo: googleImage.bottomAnchor, constant: 48),
            labelGoogleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            recoverEmailGoogle.topAnchor.constraint(equalTo: labelGoogleImage.bottomAnchor, constant: 40),
            recoverEmailGoogle.centerXAnchor.constraint(equalTo: centerXAnchor),
            recoverEmailGoogle.widthAnchor.constraint(equalToConstant: 280),
            
            lineTextfieldGoogle.topAnchor.constraint(equalTo: recoverEmailGoogle.bottomAnchor, constant: 5),
            lineTextfieldGoogle.heightAnchor.constraint(equalToConstant: 1),
            lineTextfieldGoogle.widthAnchor.constraint(equalToConstant: 300),
            lineTextfieldGoogle.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            recoverEmailButtonGoogle.topAnchor.constraint(equalTo: lineTextfieldGoogle.bottomAnchor, constant: 10),
            recoverEmailButtonGoogle.trailingAnchor.constraint(equalTo: lineTextfieldGoogle.trailingAnchor),
            
            
            
        ])
        
    }
    
}
