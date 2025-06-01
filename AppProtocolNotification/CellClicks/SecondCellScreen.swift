//
//  SecondCellScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 01/06/25.
//

import UIKit

class SecondCellScreen: UIView {

    lazy var TextSecondGenlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.text = "A segunda iMac criada pela Apple foi o iMac G4, lançado em 1999. Ele apresentava um design inovador com um monitor LCD em um braço articulado conectado a uma base hemisférica que abrigava os componentes principais.O iMac G3 (anteriormente apenas iMac), que foi o primeiro da linha, foi lançado em 1998. O iMac G4, lançado em 1999, representava uma mudança significativa no design, passando para o monitor em um braço e a base hemisférica. A Apple continuou a evoluir a linha iMac com novos modelos e tecnologias, incluindo o iMac Pro, lançado em 2017, e o iMac de 24 polegadas com chip M1, lançado em 2021"
        label.textAlignment = .center
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "imac_3q")
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addsubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addsubviews() {
        addSubview(imagemSecondGen)
        addSubview(TextSecondGenlabel)
        
        NSLayoutConstraint.activate([
            imagemSecondGen.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            imagemSecondGen.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imagemSecondGen.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imagemSecondGen.heightAnchor.constraint(equalToConstant: 220),
            imagemSecondGen.widthAnchor.constraint(equalToConstant: 220),
            
            TextSecondGenlabel.topAnchor.constraint(equalTo: imagemSecondGen.bottomAnchor, constant: 50),
            TextSecondGenlabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            TextSecondGenlabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            ])
            }}
