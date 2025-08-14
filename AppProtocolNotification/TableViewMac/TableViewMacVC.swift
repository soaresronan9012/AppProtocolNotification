//
//  TableViewMacVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 13/08/25.
//

import UIKit

class TableViewMacVC: UIViewController,  UITableViewDelegate, UITableViewDataSource {

    // array do tipo dataUser
    var data: [DataUser] = [  // array do tipo da struct
        DataUser(name: "macbook Air", nameImage: "macbook-pro-svgrepo-com" ),
        DataUser(name: "macbook Pro", nameImage: "macbook-svgrepo-com-2"),
        //DataUser(name: "iphone 7", nameImage: " iphone-svgrepo-com-3"),
        DataUser(name: "Macbook M4", nameImage: "macbook-pro-svgrepo-com"),
        //DataUser(name: "iphone SE", nameImage: "icons8-mac-mini-100"),
//        DataUser(name: "iphone 13", nameImage: "icons8-iphone13-100"),
//        DataUser(name: "iphone 17", nameImage: "iphone-svgrepo-com-4"),
        DataUser(name:"throws", nameImage: "icons8-apple-tv-100"),
        //DataUser(name: "AppleTV", nameImage: "icons8-apple-tv-100 copy")
    ]
    
    
    

    var screen : TableViewMacScreen?
    
    override func loadView() {
        screen = TableViewMacScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configtableviewDelegateAndDataSource(delegate: self, dataSource: self) // assinatura do delegate
        overrideUserInterfaceStyle = .light // força o tema
       
    }
    
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
    
    // métodos para navegacao ao clicar nas celulas
   //  toda vez que criarmos uma celula deveremos colocar um case para ela no switch
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = Iphone3VC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 1:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = Iphone5VC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 2:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = IphoneXVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 3:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = Iphone13VC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
//        case 4:
            // Ação para a primeira célula: navegação para outra tela
//            let detailVC = Iphone17ScreenVC()
//            detailVC.modalPresentationStyle = .pageSheet
//            present(detailVC, animated: true ,completion: nil)
            
            
//        case 5:
            // escolhe ultima celula com linha do tempo dos iphones
//            let detailVC = ThrowsVC()
//            detailVC.modalPresentationStyle = .pageSheet
//            present(detailVC, animated: true ,completion: nil)
            
        default:
            let alert = UIAlertController(title: "Alerta", message: "Você tocou na \(indexPath.row + 1)ª célula sem dados!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
        
        // Deseleciona a célula com animação
        tableView.deselectRow(at: indexPath, animated: true)
    }
   

}
