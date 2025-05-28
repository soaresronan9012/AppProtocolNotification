//
//  firstCellTableViewCell.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 21/04/25.
//

import UIKit

class firstCellTableViewCell: UITableViewCell {

    // Identificador reutilizável da célula
        static let identifier = "firstCellTableViewCell"

        // Label para exibir o nome do usuário
        private let nameLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 20, weight: .medium)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
        // image para ser exibida ao lado do nome
        private let imagemCell: UIImageView = {
            let img = UIImageView()
            img.translatesAutoresizingMaskIntoConstraints = false
            img.contentMode = .scaleAspectFill
            return img
        }()

    
        // Inicializador principal da célula
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) { // sempre para celulas
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            contentView.addSubview(nameLabel) // pois esta dentro do campo, precisa ser content
            contentView.addSubview(imagemCell)
            setupConstraints()
            // backgroundColor = .orange      customiza cor das células
            let selectedBGView = UIView()  // customiza cor da célula AO SER CLICADA
            selectedBGView.backgroundColor = .systemGray5
            selectedBackgroundView = selectedBGView

        }

        // Inicializador requerido para uso com storyboard (não utilizado aqui)
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        // Define as constraints da nameLabel dentro da célula
        private func setupConstraints() {
            NSLayoutConstraint.activate([
                
                imagemCell.centerYAnchor.constraint(equalTo: centerYAnchor),
                imagemCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                imagemCell.heightAnchor.constraint(equalToConstant: 50),
                imagemCell.widthAnchor.constraint(equalToConstant: 50),
                
                nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
                nameLabel.leadingAnchor.constraint(equalTo: imagemCell.trailingAnchor, constant: 28),
                //nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
            ])
        }

        // Configura o conteúdo da célula com o nome recebido para iterar no array de struct
    func configure(data: DataUser) {
        nameLabel.text = data.name
        imagemCell.image = UIImage(named: data.nameImage)
        }
}
