//
//  LoginView.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/11/24.
//

import UIKit

class LoginView: UIView {
    
    lazy var LoginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Log In"
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        return label
    }()

    // view do name
    lazy var viewUserName: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var imageUserName: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "user-svgrepo-com")
        return image
    }()
    
    lazy var textName: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Username"
        text.textColor = .systemGray
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return text
    }()
    
    lazy var lineNameView : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .black
            return line
        }()
    
    
    
    lazy var imagePassword: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "key-svgrepo-com")
        return image
    }()
    
    lazy var textPassword: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Password"
        text.textColor = .systemGray
        text.isSecureTextEntry = true
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return text
    }()
    
    lazy var linePasswordView : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .black
            return line
        }()
    
    lazy var recoverButton : UIButton = {  // botao onde aparece somente o seu texto
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("recover Password", for: .normal)
        button.setTitleColor(.systemGray, for: .normal)
        button.backgroundColor = .clear  //remove visual do botao
        button.layer.borderWidth = 0     // remove bordas
        button.addTarget(self, action: #selector(recoverButtonTappet), for: .touchUpInside)
        return button
    }()
    @objc func recoverButtonTappet(){
        print("clicou recuperar senha ")
    }
    
    
    lazy var loginButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.systemGray6, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(buttonTappet), for: .touchUpInside)
        return button
    }()
    @objc func buttonTappet(){
        print("clicou")
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addelement()
        configConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addelement(){
        // label
        addSubview(LoginLabel)
        //name
        addSubview(viewUserName)
        addSubview(imageUserName)
        addSubview(textName)
        addSubview(lineNameView)
        //password
        addSubview(imagePassword)
        addSubview(textPassword)
        addSubview(linePasswordView)
        //recoverButton
        addSubview(recoverButton)
        //button
        addSubview(loginButton)
    }
    
    func configConstraint(){
        NSLayoutConstraint.activate([
            
            LoginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            //LoginLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            LoginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            //LoginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            viewUserName.topAnchor.constraint(equalTo: LoginLabel.bottomAnchor, constant: 80),
            viewUserName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            viewUserName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            viewUserName.heightAnchor.constraint(equalToConstant: 180),
            
            imageUserName.topAnchor.constraint(equalTo: viewUserName.topAnchor, constant: 10),
            imageUserName.leadingAnchor.constraint(equalTo: viewUserName.leadingAnchor, constant: 10),
            imageUserName.widthAnchor.constraint(equalToConstant: 40),
            imageUserName.heightAnchor.constraint(equalToConstant: 40),
            
            textName.topAnchor.constraint(equalTo: viewUserName.topAnchor, constant: 20),
            textName.leadingAnchor.constraint(equalTo: imageUserName.trailingAnchor, constant: 30),
            textName.trailingAnchor.constraint(equalTo: viewUserName.trailingAnchor, constant: -10),
            
            lineNameView.topAnchor.constraint(equalTo: imageUserName.bottomAnchor, constant: 10),
            lineNameView.leadingAnchor.constraint(equalTo: viewUserName.leadingAnchor),
            lineNameView.trailingAnchor.constraint(equalTo: viewUserName.trailingAnchor),
            lineNameView.heightAnchor.constraint(equalToConstant: 1),
            
            imagePassword.topAnchor.constraint(equalTo: lineNameView.bottomAnchor, constant: 40),
            imagePassword.leadingAnchor.constraint(equalTo: viewUserName.leadingAnchor, constant: 10),
            imagePassword.widthAnchor.constraint(equalToConstant: 40),
            imagePassword.heightAnchor.constraint(equalToConstant: 40),
            
            textPassword.topAnchor.constraint(equalTo: lineNameView.topAnchor, constant: 50),
            textPassword.leadingAnchor.constraint(equalTo: imagePassword.leadingAnchor, constant: 70),
            textPassword.trailingAnchor.constraint(equalTo: viewUserName.trailingAnchor, constant: -10),
            
            linePasswordView.topAnchor.constraint(equalTo: imagePassword.bottomAnchor, constant: 10),
            linePasswordView.leadingAnchor.constraint(equalTo: viewUserName.leadingAnchor),
            linePasswordView.trailingAnchor.constraint(equalTo: viewUserName.trailingAnchor),
            linePasswordView.heightAnchor.constraint(equalToConstant: 1),
            
            recoverButton.topAnchor.constraint(equalTo: linePasswordView.topAnchor, constant: 10),
            recoverButton.trailingAnchor.constraint(equalTo: viewUserName.trailingAnchor),
            
            
            loginButton.topAnchor.constraint(equalTo: recoverButton.bottomAnchor, constant: 80),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 120),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            
            
            
            
            ])
    }
}
