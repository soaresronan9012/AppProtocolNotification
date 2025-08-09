//
//  TableViewIpadScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 04/08/25.
//

import UIKit

class TableViewIpadScreen: UIView {

        
        lazy var tableViewIpad: UITableView = { // elemento do tipo tableview
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
            tableViewIpad.delegate = delegate
            tableViewIpad.dataSource = dataSource
        }
        
        func addElement(){
            addSubview(tableViewIpad)
            
        }
        
        func configConstraints(){
            NSLayoutConstraint.activate([
                // dimensoes da tableView na tela inserida, sera o tamanho da tela do device,respeitando limites
                tableViewIpad.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                tableViewIpad.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
                tableViewIpad.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
                tableViewIpad.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                
                ])
        }
        
        

}
