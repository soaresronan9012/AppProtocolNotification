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
        label.text = "Welcome this Word!!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        label.numberOfLines = 0
        return label
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
        
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            //titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30)
            ])
    }
    
}
