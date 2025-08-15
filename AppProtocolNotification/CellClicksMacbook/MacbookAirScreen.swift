//
//  MacbookAirScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/08/25.
//

import UIKit

class MacbookAirScreen: UIView {

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
        O MacBook Air é o notebook mais leve e fino da Apple, projetado para oferecer portabilidade sem abrir mão de desempenho. Ele é ideal para tarefas do dia a dia, estudos e trabalho, com bateria de longa duração e design minimalista em alumínio reciclado. Atualmente, está disponível com o poderoso chip Apple Silicon (M1, M2 e M3), garantindo velocidade, eficiência energética e silêncio absoluto graças ao sistema sem ventoinha. Perfeito para quem busca mobilidade e estilo.
        Possui tela Retina de alta resolução com suporte a ampla gama de cores e True Tone, oferecendo imagens nítidas e realistas. A bateria pode durar até 18 horas, tornando-o ideal para trabalhar, estudar ou criar em qualquer lugar.
        Disponível em diferentes tamanhos (13 e 15 polegadas nas versões mais recentes), ele atende tanto usuários que precisam de um notebook compacto quanto quem prefere mais espaço de tela.
        O MacBook Air é indicado para tarefas como navegação na web, edição de documentos, streaming, edição leve de fotos e vídeos, e até programação, mantendo sempre o foco na mobilidade.
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "macbook-air-13-2020_-intel-i3-1.1ghz_-ssd-256gb_-8gb-gold-mwtl2-frente")
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
