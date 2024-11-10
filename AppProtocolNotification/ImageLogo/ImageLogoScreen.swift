//
//  ImageLogoScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 07/11/24.
//

import UIKit

protocol ImageLogoScreenProtocol: AnyObject {
    func imageLogoScreen()
}

class ImageLogoScreen: UIView {
    
    weak var delegateImage: ImageLogoScreenProtocol?
    
    func imageLogoScreen(delegate: ImageLogoScreenProtocol) {
        self.delegateImage = delegate
    }
    
    
    lazy var parkAppleImageView: UIImageView = {
        let imagePark = UIImageView()
        imagePark.translatesAutoresizingMaskIntoConstraints = false
        imagePark.image = UIImage(named: "imagem_2024-01-11_151503174" )
        imagePark.layer.cornerRadius = 15 // Ajuste o valor do raio conforme necessário
        imagePark.layer.masksToBounds = true // Garante que o conteúdo seja cortado
        return imagePark
    }()

    lazy var parkAppleLabel: UILabel = {
        let parklabel = UILabel()
        parklabel.translatesAutoresizingMaskIntoConstraints = false
        parklabel.text = "In the middle of Silicon Valley, the cradle of technological innovation, stands a structure that looks like something out of a science fiction film: Apple Park. Opened in 2017 in Cupertino, California."
        parklabel.textAlignment = .center  // Centraliza o texto no label
        parklabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)  // Define a fonte e o tamanho
        parklabel.textColor = .black // Cor do texto
        parklabel.numberOfLines = 0  // habilita varias linhas
        return parklabel
        }()
    
    lazy var settingsLabel: UILabel = {
        let settingslabel = UILabel()
        settingslabel.translatesAutoresizingMaskIntoConstraints = false
        settingslabel.text = "for more information, click here"
        settingslabel.textAlignment = .center
        settingslabel.textAlignment = .center  // Centraliza o texto no label
        settingslabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)  // Define a fonte e o tamanho
        settingslabel.textColor = .systemGray2 // Cor do texto
        settingslabel.numberOfLines = 0  // habilita varias linhas
        settingslabel.isUserInteractionEnabled = true // interacao com o elemento via touch
        return settingslabel
    }()
    /*private func setupSetingsLabel(): Declara uma função privada chamada setupSetingsLabel, que será usada para configurar o reconhecimento de toque no label.
     let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(settingsLabelTapped)): Cria um UITapGestureRecognizer que detecta toques no label. O target: self define que o alvo do gesto é a própria classe, e action: #selector(settingsLabelTapped) especifica o método que será executado quando o label for tocado.
     settingsLabel.addGestureRecognizer(tapGestureRecognizer): Adiciona o tapGestureRecognizer ao label, habilitando a detecção do toque.*/
    private func setupSetingsLabel() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(settingsLabelTapped))
        settingsLabel.addGestureRecognizer(tapGestureRecognizer)
    }
    
    
    //@objc private func settingsLabelTapped(): Declara um método chamado settingsLabelTapped marcado como @objc para ser compatível com o seletor de ação do UITapGestureRecognizer. Esse método é chamado quando o label é clicado.
    @objc private func settingsLabelTapped() {
        print("label clicada")
        delegateImage?.imageLogoScreen()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        backgroundColor = .systemGray5
        addElements()
        addConstraints()
        setupSetingsLabel() // invoca metodo que habilita interacao com a label
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(parkAppleImageView)
        addSubview(parkAppleLabel)
        addSubview(settingsLabel)
    }
    
    func addConstraints () {
        NSLayoutConstraint.activate([
           
            parkAppleImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 80),
            //parkAppleImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            parkAppleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            parkAppleImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            parkAppleImageView.heightAnchor.constraint(equalToConstant: 150),
            parkAppleImageView.widthAnchor.constraint(equalToConstant: 250),
            
            parkAppleLabel.topAnchor.constraint(equalTo: parkAppleImageView.bottomAnchor, constant:50 ),
            parkAppleLabel.leadingAnchor.constraint(equalTo: parkAppleImageView.leadingAnchor),
            parkAppleLabel.trailingAnchor.constraint(equalTo: parkAppleImageView.trailingAnchor),
            
            settingsLabel.topAnchor.constraint(equalTo: parkAppleLabel.bottomAnchor, constant: 60),
            settingsLabel.leadingAnchor.constraint(equalTo: parkAppleImageView.leadingAnchor),
            settingsLabel.trailingAnchor.constraint(equalTo: parkAppleImageView.trailingAnchor),
            //settingsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            ])
    }

    
}
