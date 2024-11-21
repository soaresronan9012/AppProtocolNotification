//
//  RecoverScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 20/11/24.
//

import UIKit

class RecoverScreen: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Recover password"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping  // quebra o texto por palavras
        return label
    }()
    
    lazy var viewline: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addElements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(titleLabel)
        addSubview(viewline)
        }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            viewline.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            viewline.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            viewline.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            viewline.heightAnchor.constraint(equalToConstant: 1),
            ])
        
    }
}
