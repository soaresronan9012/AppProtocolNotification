//
//  EmailSendScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/01/25.
//

import UIKit

class EmailSendScreen: UIView {
    
    lazy var phraseLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Email send!!!"
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
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
    
    private func addElements() {
        addSubview(phraseLabel)
        }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        phraseLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 120),
        phraseLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        phraseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
        phraseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        
            ])
    }
}
