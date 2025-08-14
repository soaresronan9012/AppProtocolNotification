//
//  TableViewMacScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 13/08/25.
//

import UIKit

class TableViewMacScreen: UIView {

        
        lazy var tableViewMAC: UITableView = { // elemento do tipo tableview
            let tableView = UITableView()
            tableView.translatesAutoresizingMaskIntoConstraints = false
            //class da celula e seu identifier
            // adiciona a cell na tableview
            tableView.register(firstCellTableViewCell.self, forCellReuseIdentifier: firstCellTableViewCell.identifier) // tipo de cell e sua var static
            backgroundColor = .systemGray4
            return tableView
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            addElement()
            configConstraints()
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        // metodo padrao do tableDelegate
        // delega acoes para quem asssinar, a ViewController
        func configtableviewDelegateAndDataSource(delegate: UITableViewDelegate,dataSource: UITableViewDataSource){
            tableViewMAC.delegate = delegate
            tableViewMAC.dataSource = dataSource
        }
        
        func addElement(){
            addSubview(tableViewMAC)
            
        }
        
        func configConstraints(){
            NSLayoutConstraint.activate([
                // dimensoes da tableView na tela inserida, sera o tamanho da tela do device,respeitando limites
                tableViewMAC.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                tableViewMAC.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
                tableViewMAC.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
                tableViewMAC.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                
                ])
        }
        
        

}
