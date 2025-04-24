//
//  TableVC.swift
//  AppProtocolNotification
//
//  Created by Ronan Soares on 14/04/25.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // funcoes do tipo da assinatura do protocolo tableview
    // funcao do numero de linhas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4 // 4 linhas nessa tabela
    }
    
    // funcao dos dados desta tabela
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color : [UIColor] = [.orange,.red,.purple,.brown]  // um array de cores para ilustrar a tabela
        let cell : UITableViewCell = UITableViewCell()  // var do tipo celula da tabela
        cell.backgroundColor = color[indexPath.row] // as cores das celulas, irao condizer com o array de cores
        return cell
    }
    
    // ambas funcoes acima sao padrao do sistema e precisam ser implementadas
    
   
    var screen : TableScreen?
    
    override func loadView() {
        screen = TableScreen()
        view = screen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configtableviewDelegateAndDataSource(delegate: self, dataSource: self) // assinatura do delegate

        // Do any additional setup after loading the view.
    }
    
   

}
