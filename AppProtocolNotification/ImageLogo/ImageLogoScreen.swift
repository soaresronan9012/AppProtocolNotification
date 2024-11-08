//
//  ImageLogoScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/11/24.
//

import UIKit

class ImageLogoScreen: UIView {
    
    
    lazy var parkAppleImageView: UIImageView = {
        let imagePark = UIImageView()
        imagePark.translatesAutoresizingMaskIntoConstraints = false
        imagePark.image = UIImage(named: "imagem_2024-01-11_151503174" )
        imagePark.layer.cornerRadius = 15 // Ajuste o valor do raio conforme necessário
        imagePark.layer.masksToBounds = true // Garante que o conteúdo seja cortado
        return imagePark
    }()

    lazy var parkAppleLabel: UILabel = {
        let parklabel = UILabel()
        parklabel.translatesAutoresizingMaskIntoConstraints = false
        parklabel.text = "In the middle of Silicon Valley, the cradle of technological innovation, stands a structure that looks like something out of a science fiction film: Apple Park. Opened in 2017 in Cupertino, California."
        parklabel.textAlignment = .center  // Centraliza o texto no label
        parklabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        parklabel.textColor = .black // Cor do texto
        parklabel.numberOfLines = 0  // habilita varias linhas
        return parklabel
        }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = .systemGray5
        addElements()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(parkAppleImageView)
        addSubview(parkAppleLabel)
    }
    
    func addConstraints () {
        NSLayoutConstraint.activate([
           
            parkAppleImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 80),
            parkAppleImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            parkAppleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            parkAppleImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            parkAppleImageView.heightAnchor.constraint(equalToConstant: 150),
            parkAppleImageView.widthAnchor.constraint(equalToConstant: 250),
            
            parkAppleLabel.topAnchor.constraint(equalTo: parkAppleImageView.bottomAnchor, constant:50 ),
            parkAppleLabel.leadingAnchor.constraint(equalTo: parkAppleImageView.leadingAnchor),
            parkAppleLabel.trailingAnchor.constraint(equalTo: parkAppleImageView.trailingAnchor),
            
            
            
            
            ])
    }
    
}
