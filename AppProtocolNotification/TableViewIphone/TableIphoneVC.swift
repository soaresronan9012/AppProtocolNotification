//
//  TableIphoneVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 17/07/25.
//

import UIKit

class TableIphoneVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // array do tipo dataUser
    var data: [DataUser] = [  // array do tipo da struct
        DataUser(name: "iphone 3", nameImage: "iphone-svgrepo-com 1" ),
        DataUser(name: "iphone 5", nameImage: "iphone-5-from-frontal-and-side-views-svgrepo-com"),
        //DataUser(name: "iphone 7", nameImage: " iphone-svgrepo-com-3"),
        DataUser(name: "iphone X", nameImage: "iphone-phone-smartphone-svgrepo-com"),
        //DataUser(name: "iphone SE", nameImage: "icons8-mac-mini-100"),
        DataUser(name: "iphone 13", nameImage: "icons8-iphone13-100"),
        DataUser(name: "iphone 15", nameImage: "iphone-svgrepo-com-4"),
        DataUser(name:"iphone 17", nameImage: "icons8-apple-tv-100"),
        //DataUser(name: "AppleTV", nameImage: "icons8-apple-tv-100 copy")
    ]
    
    
    

    var screen : TableIphoneScreen?
    
    override func loadView() {
        screen = TableIphoneScreen()
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

   
}
