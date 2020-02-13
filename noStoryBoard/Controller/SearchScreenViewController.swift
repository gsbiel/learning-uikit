//
//  SearchScreenViewController.swift
//  noStoryBoard
//
//  Created by user164622 on 2/10/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class SearchScreenViewController: UIViewController {
    
    private var contacts: [Contact] = ContactAPI.getContacts()
    
    
    override func viewDidLoad() {
        
        let searchView = SearchScreen(frame: UIScreen.main.bounds)
        self.view.addSubview(searchView)
        
        // Atribuindo os delegates para que a comunicação com a TableView, presente no componente SearchScreenView, aconteça.
        searchView.searchResults.delegate = self
        searchView.searchResults.dataSource = self
        
        guard let navBar = navigationController?.navigationBar else {
            fatalError("Navigation Controller does not exist.")
        }
        
        navBar.tintColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        navBar.barTintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        navBar.topItem?.title = "Search Screen"
        navBar.isTranslucent = false
    }
}

extension SearchScreenViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        cell.contact = contacts[indexPath.row]
        return cell
    }
    
    // Para cada celula sendo inserida na tabela, esse método é chamado para definir o atributo "height"
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerCell") as! TableHeader
        
        return header
    }
}
