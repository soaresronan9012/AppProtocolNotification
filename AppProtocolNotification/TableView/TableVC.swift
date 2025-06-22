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
        DataUser(name: "compact gen", nameImage: "icons8-mac-mini-100"),
        DataUser(name: "portatil", nameImage: "icons8-macbook-100"),
        DataUser(name: "Settings", nameImage: "icons8-configurações-do-imac-100"),
        DataUser(name:"TvOS", nameImage: "icons8-apple-tv-100"),
        DataUser(name: "AppleTV", nameImage: "icons8-apple-tv-100 copy")
    ]
    
    
    override func loadView() {
        screen = TableScreen()
        view = screen
        view.backgroundColor = .systemGray4
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configtableviewDelegateAndDataSource(delegate: self, dataSource: self) // assinatura do delegate
        overrideUserInterfaceStyle = .light // força o tema
        
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
    
    
    // métodos para navegacao ao clicar nas celulas
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = FirstCellVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 1:
            let detailVC = SecondCellVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
        case 2:
            // Ação para a segunda célula: exibe um alerta
            let alert = UIAlertController(title: "Alerta", message: "Você tocou na segunda célula sem dados!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)

        default:
            // Ação para as outras células
            print("Você tocou na célula de índice \(indexPath.row)")
        }

        // Deseleciona a célula com animação
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
