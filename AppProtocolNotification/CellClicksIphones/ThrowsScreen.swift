//
//  ThrowsScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 29/07/25.
//

import UIKit

class ThrowsScreen: UIView {

    private let scrollView = UIScrollView()
    private let contentView = UIView()

    lazy var TextSecondGenlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        label.text = """
        A linha do tempo dos iPhones abrange desde o lançamento do primeiro modelo em 2007 até os mais recentes. Cada geração trouxe inovações em design, recursos e desempenho. Os modelos mais recentes incluem o iPhone 16 e suas variações, com a Apple continuando a expandir as capacidades e o apelo de seus smartphones. 

        Linha do Tempo:
        * 2007: iPhone (1ª geração)
        * 2008: iPhone 3G
        * 2009: iPhone 3GS
        * 2010: iPhone 4
        * 2011: iPhone 4S
        * 2012: iPhone 5
        * 2013: iPhone 5S e 5C
        * 2014: iPhone 6 e 6 Plus
        * 2015: iPhone 6S e 6S Plus
        * 2016: iPhone SE (1ª geração), 7 e 7 Plus
        * 2017: iPhone 8, 8 Plus e X
        * 2018: iPhone XR, XS e XS Max
        * 2019: iPhone 11, 11 Pro e 11 Pro Max
        * 2020: iPhone SE (2ª geração), 12, 12 Mini, 12 Pro e 12 Pro Max
        * 2021: iPhone 13, 13 Mini, 13 Pro e 13 Pro Max
        * 2022: iPhone SE (3ª geração), 14, 14 Plus, 14 Pro e 14 Pro Max
        * 2023: iPhone 15, 15 Plus, 15 Pro e 15 Pro Max
        * 2024: iPhone 16, 16 Plus, 16 Pro e 16 Pro Max
            •    2025: iPhone 16e 
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "tron-le-FctyNl5YCbs-unsplash")
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false

        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imagemSecondGen)
        contentView.addSubview(TextSecondGenlabel)

        NSLayoutConstraint.activate([
            // ScrollView preenchendo a view
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),

            // contentView dentro da scrollView
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

            // imagem
            imagemSecondGen.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 40),
            imagemSecondGen.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            imagemSecondGen.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            imagemSecondGen.heightAnchor.constraint(equalToConstant: 220),

            // texto
            TextSecondGenlabel.topAnchor.constraint(equalTo: imagemSecondGen.bottomAnchor, constant: 50),
            TextSecondGenlabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            TextSecondGenlabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            TextSecondGenlabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40)
        ])
    }

}
