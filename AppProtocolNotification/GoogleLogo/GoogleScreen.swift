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

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(googleImage)
        addSubview(labelGoogleImage)
        addSubview(recoverEmailGoogle)
        addSubview(lineTextfieldGoogle)
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
            
        ])
        
    }
    
}
