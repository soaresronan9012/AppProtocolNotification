//
//  FourtyCellScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 15/07/25.
//

import UIKit

class FourtyCellScreen: UIView {

    lazy var TextSecondGenlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.text = "O novo iMac, com o poderoso chip M4 e a Apple Intelligence, em seu incrível design ultrafino. Graças ao chip M4, o iMac é até 1,7 vez mais rápido em tarefas do dia a dia e até 2,1 vezes mais rápido em processos mais exigentes, como editar fotos ou jogar games, em comparação com o iMac com M11. E, com o Neural Engine no M4, o iMac é o melhor computador tudo em um do mundo com inteligência artificial e foi feito para a Apple Intelligence, o sistema de inteligência pessoal que transforma a maneira de trabalhar, se comunicar e se expressar, sem deixar de proteger a privacidade."
        label.textAlignment = .center
        return label
    }()
    
    lazy var imagemSecondGen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "imac-apple-tela-retina-24-4-5k-chip-m4-cpu-8-nucleos-gpu-8-nucleos-16gb-ram-256gb-ssd-azul-mwuf3bz-a_1732020819_gg-2")
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addsubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addsubviews() {
        addSubview(imagemSecondGen)
        addSubview(TextSecondGenlabel)
        
        NSLayoutConstraint.activate([
            imagemSecondGen.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            imagemSecondGen.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imagemSecondGen.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imagemSecondGen.heightAnchor.constraint(equalToConstant: 220),
            imagemSecondGen.widthAnchor.constraint(equalToConstant: 220),
            
            TextSecondGenlabel.topAnchor.constraint(equalTo: imagemSecondGen.bottomAnchor, constant: 50),
            TextSecondGenlabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            TextSecondGenlabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            ])
            }
}
