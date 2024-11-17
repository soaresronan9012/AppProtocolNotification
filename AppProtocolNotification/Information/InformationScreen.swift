//
//  InformationScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/11/24.
//

import UIKit

class InformationScreen: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var imageHead : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "welcome-svgrepo-com")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.layer.cornerRadius = 45
        return image
    }()

    override init(frame: CGRect) {
         super.init(frame: frame)
        backgroundColor = .systemGray5
        addElement()
        configConstraints()
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElement() {
        addSubview(titleLabel)
        addSubview(imageHead)
        
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            //titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            //titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            imageHead.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            imageHead.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            //imageHead.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            imageHead.heightAnchor.constraint(equalToConstant:70),
            imageHead.widthAnchor.constraint(equalToConstant: 150),
            ])
    }
    
}
