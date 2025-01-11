//
//  MensagemScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/12/24.
//

import UIKit

protocol labelProtocol: AnyObject {
    func labelreturn()
    }

class MensagemScreen: UIView {
    
    weak var delegate: labelProtocol?
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "email sent successfully!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping  // quebra o texto por palavras
        return label
    }()
    
    lazy var emailImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "email-envelope-letter-message-fast-svgrepo-com")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var textLabel: UILabel = {
        let settingslabel = UILabel()
        settingslabel.translatesAutoresizingMaskIntoConstraints = false
        settingslabel.text = "a notification sent to your email address!"
        settingslabel.textAlignment = .center
        settingslabel.textAlignment = .center  // Centraliza o texto no label
        settingslabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)  // Define a fonte e o tamanho
        settingslabel.textColor = .black // Cor do texto
        settingslabel.numberOfLines = 0  // habilita varias linhas
        settingslabel.isUserInteractionEnabled = true // interacao com o elemento via touch
        return settingslabel
    }()
    
    lazy var dialogLabel: UILabel = {
        let settingslabel = UILabel()
        settingslabel.translatesAutoresizingMaskIntoConstraints = false
        settingslabel.text = "please, check your email address!"
        settingslabel.textAlignment = .center
        settingslabel.textAlignment = .center  // Centraliza o texto no label
        settingslabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)  // Define a fonte e o tamanho
        settingslabel.textColor = .black // Cor do texto
        settingslabel.numberOfLines = 0  // habilita varias linhas
        settingslabel.isUserInteractionEnabled = true // interacao com o elemento via touch
        return settingslabel
    }()
    private func setupGestureRecognizerlabel() {  // padrao do sistema
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
        dialogLabel.addGestureRecognizer(tapGesture) // elemento chama
                    }
            @objc private func labelTapped() { // acao invocada ao ser clicada
                print("imagem apple clicada!")
                delegate?.labelreturn()
                
            }
    
    
    lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = .black
        return lineView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addelement()
        setupConstraints()
        setupGestureRecognizerlabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addelement() {
        addSubview(titleLabel)
        //addSubview(textLabel)
        addSubview(emailImage)
        addSubview(dialogLabel)
        addSubview(lineView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            emailImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50 ),
            //emailImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 38),
            emailImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            //emailImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailImage.heightAnchor.constraint(equalToConstant: 60),
            emailImage.widthAnchor.constraint(equalToConstant: 60),
            
            //textLabel.topAnchor.constraint(equalTo: emailImage.topAnchor),
            //textLabel.leadingAnchor.constraint(equalTo: emailImage.trailingAnchor, constant: 5),
            //textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            dialogLabel.topAnchor.constraint(equalTo: emailImage.bottomAnchor, constant: 40),
            dialogLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            //dialogLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            
            lineView.topAnchor.constraint(equalTo: dialogLabel.bottomAnchor, constant: 5),
            lineView.centerXAnchor.constraint(equalTo: centerXAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.widthAnchor.constraint(equalToConstant: 250)
         
            
                        
        
        ])
    }
    
}
