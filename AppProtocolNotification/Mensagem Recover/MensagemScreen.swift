//
//  MensagemScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 10/12/24.
//

import UIKit

class MensagemScreen: UIView {
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "e-mail enviado com sucesso!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping  // quebra o texto por palavras
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addelement()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addelement() {
        addSubview(titleLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
                        
        
        ])
    }
    
}
