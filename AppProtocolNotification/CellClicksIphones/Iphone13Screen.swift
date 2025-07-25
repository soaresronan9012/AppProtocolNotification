//
//  Iphone13Screen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 25/07/25.
//

import UIKit

class Iphone13Screen: UIView {

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
        O iPhone 13 e o iPhone 13 Mini são smartphones projetados, desenvolvidos, comercializados e vendidos pela Apple Inc. Eles são a décima quinta geração de iPhones (sucedendo ao iPhone 12 e iPhone 12 Mini). Eles foram apresentados em um evento da Apple no Apple Park em Cupertino, Califórnia, em 14 de setembro de 2021, juntamente com os carros-chefe iPhone 13 Pro e iPhone 13 Pro Max com preços mais altos. As pré-encomendas para o iPhone 13 e iPhone 13 Mini começaram em 17 de setembro de 2021. Eles foram lançados oficialmente em 24 de setembro de 2021.[4]

        Juntamente com o iPhone 12, o iPhone 13 Mini foi descontinuado em 12 de setembro de 2023, com o anúncio do iPhone 15 e iPhone 15 Pro.

        Design
        O iPhone 13 e 13 Mini estão disponíveis em seis cores: Midnight, Starlight, Product Red, Blue, Pink e Green.[5][6]

        Em 8 de março de 2022, no evento especial da Apple "Peek Performance", a Apple revelou uma nova opção de cor verde, que ficou disponível em 18 de março.[7][8]
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "apple-iphone-13--128-gb----meia-noite--2--vwngqh355k")
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
