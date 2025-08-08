//
//  TableViewIpadVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 04/08/25.
//

import UIKit

class TableViewIpadVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    // array do tipo dataUser
    var data: [DataUser] = [  // array do tipo da struct
        DataUser(name: "iPad (primeiro)", nameImage: "ipad-reverse-svgrepo-com" ),
        DataUser(name: "iPad Pro (1ª geração)", nameImage: "ipad-pro-svgrepo-com"),
        //DataUser(name: "iphone 7", nameImage: " iphone-svgrepo-com-3"),
        DataUser(name: "iPad Mini (5ª geração)", nameImage: "ipad-svgrepo-com-5"),
        //DataUser(name: "iphone SE", nameImage: "icons8-mac-mini-100"),
        //DataUser(name: "iPad (7ª geração)", nameImage: "ipad-svgrepo-com-6"),
        //DataUser(name: "iPad Pro (6ª geração)", nameImage: "ipad-svgrepo-com-7"),
        DataUser(name:"throws", nameImage: "icons8-apple-tv-100"),
        //DataUser(name: "AppleTV", nameImage: "icons8-apple-tv-100 copy")
    ]
    
    
    

    var screen : TableViewIpadScreen! // instancia da view que contem a tableview
    
    override func loadView() {
        screen = TableViewIpadScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configtableviewDelegateAndDataSource(delegate: self, dataSource: self) // assinatura do delegate
        overrideUserInterfaceStyle = .light // força o tema
       
    }
    
    
    // metodos do delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // editar conteudo deste metodo
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
            let detailVC = IpadFirstScreenVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 1:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = IpadSecondScreenVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 2:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = IpadThirtyScreenVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 3:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = Iphone13VC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        case 4:
            // Ação para a primeira célula: navegação para outra tela
            let detailVC = Iphone17ScreenVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
            
        case 5:
            // escolhe ultima celula com linha do tempo dos iphones
            let detailVC = ThrowsVC()
            detailVC.modalPresentationStyle = .pageSheet
            present(detailVC, animated: true ,completion: nil)
            
        default:
            let alert = UIAlertController(title: "Alerta", message: "Você tocou na \(indexPath.row + 1)ª célula sem dados!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
        
        // Deseleciona a célula com animação
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
