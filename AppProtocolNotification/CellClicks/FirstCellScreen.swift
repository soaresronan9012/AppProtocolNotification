//
//  FirstCellScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 31/05/25.
//

import UIKit

class FirstCellScreen: UIView {
    
    lazy var TextFirstGenlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.text = "A primeira geração de iMac, lançada em 1998, foi o iMac G3, que marcou um novo estilo para a Apple. Este modelo foi um dos primeiros lançamentos da empresa sob a liderança de Steve Jobs após seu retorno à Apple, e é considerado um dos mais inovadores da história da empresa."
        label.textAlignment = .center
        return label
    }()
    
    lazy var imagemFirstGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "2016-04-01-macintosh")
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
        addSubview(imagemFirstGen)
        addSubview(TextFirstGenlabel)
        
        NSLayoutConstraint.activate([
            imagemFirstGen.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            imagemFirstGen.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imagemFirstGen.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imagemFirstGen.heightAnchor.constraint(equalToConstant: 220),
            imagemFirstGen.widthAnchor.constraint(equalToConstant: 220),
            
            TextFirstGenlabel.topAnchor.constraint(equalTo: imagemFirstGen.bottomAnchor, constant: 50),
            TextFirstGenlabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            TextFirstGenlabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            ])
            }
    
    
}
