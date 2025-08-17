//
//  ThrowsMacbookScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/08/25.
//

import UIKit

class ThrowsMacbookScreen: UIView {

    private let scrollView = UIScrollView()  // container scroll
    private let contentView = UIView()      // container conteudo

    lazy var TextSecondGenlabel: UILabel = { // elemento texto
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        label.text = """
        Gerações de MacBook
        1ª Geração (2006 – 2008)
        Lançada em 2006, substituiu o iBook e PowerBook. Foi a primeira a trazer processadores Intel. O design era em policarbonato branco ou preto.
        2ª Geração (2008 – 2012) – Unibody
        Introdução do design unibody em alumínio, mais resistente e fino. Surge o MacBook Pro como linha premium. O MacBook Air estreia em 2008 como o notebook mais fino do mundo.
        3ª Geração (2012 – 2015) – Retina Display
        Chegada da tela Retina, com resolução muito superior. Modelos mais leves, sem drive de CD/DVD. O MacBook Air se consolida como modelo de entrada leve e portátil.
        4ª Geração (2015 – 2020) – USB-C e Touch Bar
        Lançamento do MacBook de 12 polegadas extremamente fino, com apenas USB-C. Em 2016, o MacBook Pro recebe a Touch Bar. Nessa época, surge o teclado “borboleta”, bastante criticado por falhas.
        5ª Geração (2020 – 2023) – Apple Silicon (M1/M2)
        A Apple abandona os processadores Intel e lança o chip M1 em 2020, trazendo grande salto em desempenho e autonomia de bateria. Evolução posterior com o M2, que melhora CPU, GPU e eficiência.
        6ª Geração (2023 – 2024) – M3 e Telas Avançadas
        Lançamento dos chips M3, M3 Pro e M3 Max. Introdução de gráficos com ray tracing em hardware. Melhorias na tela Liquid Retina XDR com ProMotion e até 22 horas de bateria.
        7ª Geração (2024 – atual) – Linha M4
        Anunciada em outubro de 2024. Chips M4, M4 Pro e M4 Max com foco em inteligência artificial e eficiência. Nova webcam de 12 MP, até 24 horas de bateria, Thunderbolt 5 nos modelos Pro/Max e opção de tela nano-texture para reduzir reflexo.
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {  // elemento imagem
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "mac-compare__ct98832ueaky_og")
        return imageView
    }()

    override init(frame: CGRect) { // inicializador da class UIView
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false // sempre
        contentView.translatesAutoresizingMaskIntoConstraints = false  // sempre

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
