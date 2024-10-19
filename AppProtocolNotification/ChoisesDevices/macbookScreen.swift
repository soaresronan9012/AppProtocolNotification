//
//  macbookScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 18/10/24.
//

import UIKit

class macbookScreen: UIView {
    
    lazy var macbookImage: UIImageView = {
        let macbook = UIImageView()
        macbook.translatesAutoresizingMaskIntoConstraints = false
        macbook.image = UIImage(named: "imac" )
        return macbook
    }()
    
    lazy var macbooklabel: UILabel = {
        let macbooklabel = UILabel()
        macbooklabel.translatesAutoresizingMaskIntoConstraints = false
        macbooklabel.text = "Latest generation Macbook equipped with the M3 chip"
        macbooklabel.textAlignment = .center  // Centraliza o texto no label
        macbooklabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        macbooklabel.textColor = .black // Cor do texto
        macbooklabel.numberOfLines = 0
        return macbooklabel
        
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
    
    
    private func addElements () { // método para invocar os elementos para a view
        addSubview(macbookImage)
        addSubview(macbooklabel)
    }
    
    private func configConstraints () {
        NSLayoutConstraint.activate([
            
            macbooklabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            macbooklabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbooklabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            macbooklabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            macbookImage.topAnchor.constraint(equalTo: macbooklabel.bottomAnchor, constant: 60),
            macbookImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbookImage.heightAnchor.constraint(equalToConstant: 200),
            macbookImage.widthAnchor.constraint(equalToConstant: 200),
            
            
        ])}
    
}

