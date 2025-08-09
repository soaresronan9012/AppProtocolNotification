//
//  ThrowsIpadScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 08/08/25.
//

import UIKit

class ThrowsIpadScreen: UIView {

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
        A linha de iPads da Apple inclui o iPad, iPad Air, iPad mini e iPad Pro. O primeiro iPad foi lançado em 2010, e desde então, a Apple tem lançado diversas gerações e modelos de cada linha, com diferentes tamanhos de tela, processadores e recursos. 

        Linhas de iPads e seus lançamentos:
        * iPad:  A linha principal de iPads, com modelos que variam em tamanho de tela e recursos, desde o iPad original até as versões mais recentes com telas maiores e processadores mais potentes.    
        * iPad Air:  Uma versão mais leve e fina do iPad, com foco em portabilidade e desempenho.    
        * iPad mini:  Uma versão compacta do iPad, ideal para quem busca um dispositivo mais portátil e fácil de transportar.    
        * iPad Pro:  Uma linha de iPads com foco em desempenho e recursos avançados, como telas maiores e processadores mais potentes, muitas vezes voltada para profissionais e usuários que exigem mais poder de processamento.      
        Linha do tempo de lançamentos (exemplos):
        * 2010: Lançamento do primeiro iPad.
        * 2011: Lançamento do iPad 2.
        * 2012: Lançamento do iPad (3ª e 4ª geração) e iPad mini (1ª geração).
        * 2013: Lançamento do iPad Air (1ª geração).
        * 2014: Lançamento do iPad mini 3.
        * 2020: Lançamento do iPad Air (4ª geração).
        * 2021: Lançamento do iPad Pro (5ª geração).
        * 2025: Lançamento dos modelos mais recentes do iPad Air e iPad.  

        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "hq720")
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray4
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
