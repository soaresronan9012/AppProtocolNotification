//
//  ThirtyCellScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 23/06/25.
//

import UIKit

class ThirtyCellScreen: UIView {

    lazy var TextSecondGenlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.text = "O iMac de 2005 é um modelo específico da linha iMac da Apple, conhecido como iMac G5, que foi lançado em duas versões: uma em abril de 2005 e outra em outubro de 2005. O modelo de outubro de 2005 introduziu uma webcam iSight integrada e a interface Front Row, facilitando o acesso à mídia. "
        label.textAlignment = .center
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "apple-imac-g5-isight_awwb")
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
            }

   

}
