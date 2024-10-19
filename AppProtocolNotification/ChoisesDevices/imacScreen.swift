//
//  imacScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class imacScreen: UIView {
    
   
    
    lazy var imacbooklabel: UILabel = {
        let imacbooklabel = UILabel()
        imacbooklabel.translatesAutoresizingMaskIntoConstraints = false
        imacbooklabel.text = "Latest generation iMacbook equipped with the M3 chip"
        imacbooklabel.textAlignment = .center  // Centraliza o texto no label
        imacbooklabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        imacbooklabel.textColor = .black // Cor do texto
        imacbooklabel.numberOfLines = 0
        return imacbooklabel
        }()
    
    lazy var imacbookImage: UIImageView = {
        let imacbook = UIImageView()
        imacbook.translatesAutoresizingMaskIntoConstraints = false
        imacbook.image = UIImage(named: "imac-svgrepo-com-2" )
        return imacbook
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
        addSubview(imacbookImage)
        addSubview(imacbooklabel)
        }
    
    func configconstrain() {
        NSLayoutConstraint.activate([
            imacbooklabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            imacbooklabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacbooklabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            imacbooklabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            imacbookImage.topAnchor.constraint(equalTo: imacbooklabel.bottomAnchor, constant: 60),
            imacbookImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacbookImage.heightAnchor.constraint(equalToConstant: 200),
            imacbookImage.widthAnchor.constraint(equalToConstant: 200),
            ])
    }
    
}
