//
//  iphoneScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class iphoneScreen: UIView {

    lazy var iphonelabel: UILabel = {
        let iphone = UILabel()
        iphone.translatesAutoresizingMaskIntoConstraints = false
        iphone.text = "Latest generation iphone equipped with the iOS 18"
        iphone.textAlignment = .center  // Centraliza o texto no label
        iphone.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        iphone.textColor = .black // Cor do texto
        iphone.numberOfLines = 0
        return iphone
        }()
    
    lazy var iphoneImage: UIImageView = {
        let iphone = UIImageView()
        iphone.translatesAutoresizingMaskIntoConstraints = false
        iphone.image = UIImage(named: "iphone-svgrepo-com-2" )
        return iphone
        }()
   

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        configconstrain()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(iphonelabel)
        addSubview(iphoneImage)
        }
    
    func configconstrain() {
        NSLayoutConstraint.activate([
            iphonelabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            iphonelabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            iphonelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            iphonelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            iphoneImage.topAnchor.constraint(equalTo: iphonelabel.bottomAnchor, constant: 60),
            iphoneImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            iphoneImage.heightAnchor.constraint(equalToConstant: 200),
            iphoneImage.widthAnchor.constraint(equalToConstant: 200),
            ])
    }
}
