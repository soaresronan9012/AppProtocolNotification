//
//  MacbookProScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/08/25.
//

import UIKit

class MacbookProScreen: UIView {

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
        O MacBook Pro é o notebook profissional da Apple, projetado para oferecer desempenho máximo para usuários exigentes. Construído em alumínio de alta resistência, combina design elegante com potência bruta, sendo ideal para criadores de conteúdo, desenvolvedores, designers e profissionais que trabalham com tarefas pesadas.
        Com os chips Apple Silicon (M1 Pro, M1 Max, M2 Pro, M2 Max, M3 Pro e M3 Max), o MacBook Pro entrega processamento ultrarrápido, gráficos avançados e eficiência energética de ponta. Ele é capaz de lidar com edição de vídeos 8K, modelagem 3D, programação complexa e execução de múltiplos aplicativos pesados simultaneamente.
        Possui tela Liquid Retina XDR com brilho extremo, contraste preciso e cores fiéis, perfeita para trabalhos de fotografia, cinema e design gráfico. O sistema de som com áudio espacial oferece imersão total, enquanto a bateria pode durar até 22 horas nas versões mais recentes.
        Disponível nos tamanhos 14 e 16 polegadas, o MacBook Pro é equipado com portas HDMI, leitor de cartão SD, MagSafe, além de várias entradas Thunderbolt, garantindo flexibilidade para qualquer tipo de trabalho profissional.
        O MacBook Pro é a escolha para quem precisa de máxima performance, qualidade de imagem excepcional e recursos avançados para criação e produtividade sem limites.
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "macbook_m1_1")
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
