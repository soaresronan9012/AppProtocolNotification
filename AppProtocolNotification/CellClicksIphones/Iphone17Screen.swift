//
//  Iphone17Screen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 25/07/25.
//

import UIKit

class Iphone17Screen: UIView {

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
        A Apple prepara o lançamento do iPhone 17 Pro para setembro de 2025, com novas cores vibrantes e um design inovador, conforme vazamentos divulgados em 24 de julho de 2025 pelo leaker Majin Bu. Imagens de protetores de câmera revelam opções como Cinza Titânio, Azul Escuro, Prata e um tom laranja inspirado no Apple Watch Ultra, além de rumores sobre uma cor com efeito dinâmico Liquid Glass, alinhada ao iOS 26. O modelo, que terá um painel de câmera maior e três lentes de 48 MP, promete atrair atenção com sua estética ousada. A ser produzido na Índia e na China, o iPhone 17 Pro mantém a liderança da Apple em inovação, com 12 mil pré-registros em fóruns especializados até julho. A expectativa é alta para o evento de lançamento, previsto para 9 de setembro.

        A nova linha reforça a aposta em design e tecnologia, com foco na experiência visual do iOS 26. A paleta ousada já gera debates entre fãs nas redes sociais.

        Lançamento: Previsto para 9 de setembro de 2025.
        Cores: Cinza Titânio, Azul Escuro, Prata e Laranja.
        Câmeras: Três lentes de 48 MP com painel maior.
        Produção: Fábricas na Índia e na China.
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "1366-2000_bq4s")
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
