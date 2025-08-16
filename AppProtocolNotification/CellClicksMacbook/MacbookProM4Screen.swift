//
//  MacbookProM4Screen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 16/08/25.
//

import UIKit

class MacbookProM4Screen: UIView {

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
        A Apple anunciou os novos MacBook Pro com a família de chips M4 (M4, M4 Pro e M4 Max) em 30 de outubro de 2024, com pré-vendas iniciando no mesmo dia e disponibilidade a partir de 8 de novembro de 2024 
        Apple
        Macworld
        .
        Chips e Arquitetura
        M4 (base):
        CPU de 10 núcleos (4 performance + 6 eficiência)
        GPU de 10 núcleos com suporte a ray tracing em hardware
        Neural Engine de 16 núcleos
        Memória unificada com 120 GB/s de largura de banda 
        Apple
        Apple Support
        Wikipedia
        .
        M4 Pro:
        Versões com CPU de 12 ou 14 núcleos, GPU de até 20 núcleos
        Até 75% mais largura de banda de memória em relação à geração anterior e desempenho até 3× superior ao M1 Pro 
        Apple
        Wikipedia
        .
        M4 Max:
        CPUs com até 16 núcleos, GPUs com até 40 núcleos
        Altíssima performance voltada a cargas pesadas, como VFX e animação 3D 
        Wikipedia
        Macworld
        .
        Desempenho
        O modelo com M4 (14″) oferece avanços expressivos: até 1,8× mais rápido que o MacBook Pro com M1 em edição de fotos, até 3,4× mais rápido em renderização complexa (Blender), além de 7× mais rápido em Affinity Photo e 9,8× em detecção de cenas no Premiere Pro 
        Apple
        .
        O M4 Pro entrega performance até 4× maior no Redshift, 5× em simulações MATLAB, e 23,8× em basecalling de DNA comparado a modelos com Core i9 
        Apple
        .
        Recursos e Conectividade
        Portas: Todos os modelos agora contam com 3 portas Thunderbolt — sendo Thunderbolt 5 nos modelos Pro/Max — além de HDMI, SDXC, MagSafe e jack de 3,5 mm 
        Macworld
        Apple
        .
        Tela: Liquid Retina XDR com ProMotion até 120 Hz, 1 000 nits em SDR (1 600 nits HDR), e opção de acabamento nano-texture para reduzir reflexos 
        Apple Support
        Apple
        .
        Câmera: Webcam de 12 MP com Center Stage (inclui Desk View) 
        Macworld
        .
        Bateria impressionante de até 24 horas, segundo a Apple 
        Apple
        folhape.com.br
        .
        Integra Apple Intelligence com ferramentas habilitadas por IA local, com privacidade reforçada
        """
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "macbook-pro-og-202410")
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
