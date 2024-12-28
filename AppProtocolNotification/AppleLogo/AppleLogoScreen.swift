//
//  AppleLogoScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 26/12/24.
//

import UIKit

class AppleLogoScreen: UIView {
    
    lazy var appleImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Apple_logo_black.svg")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var labelAppleImage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Enter your Apple ID"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var recoverEmailApple: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Enter your apple ID"
        text.textColor = .systemGray
        text.keyboardType = .emailAddress
        text.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        //text.isUserInteractionEnabled = true  // habilita interacao de toque
        return text
    }()
    
    lazy var lineTextfield : UIView = { // line
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .black
        return line
        }()
    
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(appleImage)
        addSubview(labelAppleImage)
        addSubview(recoverEmailApple)
        addSubview(lineTextfield)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            appleImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            appleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            appleImage.widthAnchor.constraint(equalToConstant: 90),
            appleImage.heightAnchor.constraint(equalToConstant: 90),
            
            labelAppleImage.topAnchor.constraint(equalTo: appleImage.bottomAnchor, constant: 50),
            labelAppleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            recoverEmailApple.topAnchor.constraint(equalTo: labelAppleImage.bottomAnchor, constant: 40),
            recoverEmailApple.centerXAnchor.constraint(equalTo: centerXAnchor),
            recoverEmailApple.widthAnchor.constraint(equalToConstant: 280),
            
            lineTextfield.topAnchor.constraint(equalTo: recoverEmailApple.bottomAnchor, constant: 5),
            lineTextfield.heightAnchor.constraint(equalToConstant: 1),
            lineTextfield.widthAnchor.constraint(equalToConstant: 300),
            lineTextfield.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
    }
    
}
