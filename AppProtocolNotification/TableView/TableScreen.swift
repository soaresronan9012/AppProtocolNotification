//
//  TableScreen.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 15/04/25.
//

import UIKit

class TableScreen: UIView {
    
    lazy var tableView: UITableView = { // elemento do tipo tableview
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        //class da celula e seu identifier
        // adiciona a cell na tableview
        tableView.register(firstCellTableViewCell.self, forCellReuseIdentifier: firstCellTableViewCell.identifier)
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
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func addElement(){
        addSubview(tableView)
        
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate([
            // dimensoes da tableView na tela inserida
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            ])
    }
    
}
