//
//  IpadSecondScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/08/25.
//

import UIKit

class IpadSecondScreen: UIView {

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
        O iPad de segunda geração, conhecido como iPad 2, foi lançado pela Apple em 2011. Ele foi um marco como o segundo modelo de tablet da empresa, trazendo novidades como câmeras frontal e traseira, além de um design mais fino e leve que o primeiro iPad. 

        Características principais do iPad 2:
        * Design: Mais fino e leve que o modelo anterior, com espessura de 8,8 mm e peso de 601g (Wi-Fi) ou 613g (Wi-Fi + 3G).  
        * Processador: Equipado com o processador Apple A5 dual-core, que oferecia melhor desempenho em relação ao A4 do primeiro iPad.  
        * Tela: Tela de 9.7 polegadas com resolução de 1024x768 pixels.  
        * Câmeras: Duas câmeras, uma frontal e uma traseira, para fotos e vídeos.  
        * Conectividade: Opções Wi-Fi e Wi-Fi + 3G (posteriormente 3G/4G).  
        * Sistema Operacional: iOS, com suporte para aplicativos e recursos da App Store.  
        * Armazenamento: Disponível em versões de 16GB, 32GB e 64GB.  
        Em resumo: O iPad 2 foi um tablet popular que ofereceu melhorias significativas em relação ao seu antecessor, tornando-se uma opção atraente para quem buscava um dispositivo com bom desempenho e recursos de câmera, mesmo sendo um modelo mais antigo. 
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "198294708")
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
