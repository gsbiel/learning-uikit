//
//  SettingsScreenViewController.swift
//  noStoryBoard
//
//  Created by user164622 on 2/14/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class SettingsScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        guard let navBar = navigationController?.navigationBar else {
            fatalError("There is no navigation controller.")
        }
        navBar.isHidden = true
        
        let settingsScreen = SettingsScreen(frame: UIScreen.main.bounds)
        
        settingsScreen.table.delegate = self
        settingsScreen.table.dataSource = self
        
        self.view.addSubview(settingsScreen)
    }
}

extension SettingsScreenViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Olar"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return tableView.bounds.height/2.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsHeaderCell") as! SettingsTableHeader
        
        return header
    }
    
    
}
