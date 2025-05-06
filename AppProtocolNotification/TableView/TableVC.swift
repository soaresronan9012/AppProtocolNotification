//
//  TableVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/04/25.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var screen : TableScreen?
    // array do tipo dataUser
    var data: [DataUser] = [  // array do tipo da struct
        DataUser(name: "first gen", nameImage: "icons8-computador-100" ),
        DataUser(name: "second gen", nameImage: "icons8-monitor-100"),
        DataUser(name: "thirty gen", nameImage: "icons8-mac-pro-100"),
        DataUser(name: "new gen", nameImage: "icons8-pro-display-xdr-lado-traseiro-100"),
        DataUser(name: "compact gen", nameImage: "icons8-mac-mini-100")
    ]
    
    
    override func loadView() {
        screen = TableScreen()
        view = screen
        view.backgroundColor = .systemGray4
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configtableviewDelegateAndDataSource(delegate: self, dataSource: self) // assinatura do delegate
        overrideUserInterfaceStyle = .light
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    // funcoes do tipo da assinatura do protocolo tableview
    // funcao do numero de linhas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count // itera sobre o array do tipo struct
    }
    
    // funcao dos dados desta tabela
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // cria uma var do tipo da cell, passa seu identifier, confere se o tipo é o mesmo com as!
        let cell:firstCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: firstCellTableViewCell.identifier, for: indexPath) as? firstCellTableViewCell ?? firstCellTableViewCell()
    // pega o metodo da cell e passa o array criado aqui na table e itera no mesmo
        cell.configure(data: data[indexPath.row])
        return cell
    }
    
    // metodo da tableView que da espacamento entre linhas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
    // ambas funcoes acima sao padrao do sistema e precisam ser implementadas
    
   
    
}
