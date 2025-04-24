//
//  firstCellTableViewCell.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 21/04/25.
//

import UIKit

class firstCellTableViewCell: UITableViewCell {

    // Identificador reutilizável da célula
        static let identifier = "UserCell"

        // Label para exibir o nome do usuário
        private let nameLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 16, weight: .medium)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        // Inicializador principal da célula
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            contentView.addSubview(nameLabel)
            setupConstraints()
        }

        // Inicializador requerido para uso com storyboard (não utilizado aqui)
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        // Define as constraints da nameLabel dentro da célula
        private func setupConstraints() {
            NSLayoutConstraint.activate([
                nameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
            ])
        }

        // Configura o conteúdo da célula com o nome recebido
        func configure(name: String) {
            nameLabel.text = name
        }
}
