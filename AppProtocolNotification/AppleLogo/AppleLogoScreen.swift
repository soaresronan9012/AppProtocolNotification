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
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
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
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            appleImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            appleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            appleImage.widthAnchor.constraint(equalToConstant: 90),
            appleImage.heightAnchor.constraint(equalToConstant: 90),
            
            labelAppleImage.topAnchor.constraint(equalTo: appleImage.bottomAnchor, constant: 50),
            labelAppleImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
    }
    
}
