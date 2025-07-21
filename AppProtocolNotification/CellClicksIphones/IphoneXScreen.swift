//
//  IphoneXScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 21/07/25.
//

import UIKit

class IphoneXScreen: UIView {

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
        O iPhone X (X é pronunciado em números romanos como 10; em inglês, por sua vez, pronuncia-se[ˈtɛn])[2] foi um smartphone criado, desenvolvido e comercializado pela Apple Inc. Foi anunciado no dia 12 de setembro de 2017, juntamente com o iPhone 8 e o iPhone 8 Plus no Teatro Steve Jobs no campus Apple Park, pelo CEO da Apple Tim Cook, e foi lançado no dia 3 de novembro de 2017.[3][4][5][6] Foi batizado de iPhone X por celebrar o décimo aniversário do iPhone, uma vez que o "X" representa o número dez em algarismos romanos.

        Dentro do rol de dispositivos da Apple, o modelo X é posicionado como um modelo premium, topo de linha, destinado a exibir as tecnologias mais avançadas. Os vazamentos, incluindo aqueles dos fabricantes de capas, além do firmware do HomePod e a versão final do iOS 11, reveleram vários aspectos do dispositivo antes do seu lançamento, e também o fato de que teria um desgin praticamente sem bordas e sem o tradicional botão de início, um display OLED, duas câmeras com sensor de profundidade e um sistema de desbloqueio por reconhecimento facial conhecido como Face ID
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "IPhone_X_vector.svg")
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
