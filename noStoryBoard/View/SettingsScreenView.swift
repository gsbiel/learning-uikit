//
//  SettingsScreenView.swift
//  noStoryBoard
//
//  Created by user164622 on 2/14/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class SettingsScreen: UIView {
    
    lazy var table: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(SettingsTableHeader.self, forHeaderFooterViewReuseIdentifier: "settingsHeaderCell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        self.addSubview(table)
        setupLayout()
    }
    
    private func setupLayout() {
        table.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        table.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
    
}

class SettingsTableHeader: UITableViewHeaderFooterView {
    
    private lazy var headerContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.8551442952, green: 0.8712790933, blue: 0.8390094972, alpha: 1)
        return view
    }()
    
    private lazy var userImage: UIView = {
        let image = UIView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 60
        image.backgroundColor = UIColor.brown
        return image
    }()
    
    private lazy var helpContainer: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var helpLabel: UILabel = {
        let label = UILabel()
        label.text = "Ajuda"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    private lazy var userInfoContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var userIdLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "@gabriel.sgaspar"
        return label
    }()
    
    private lazy var userName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Gabriel Gaspar"
        return label
    }()
    
    private lazy var seeProfile: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.green
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "Ver meu perfil >"
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        
        helpContainer.addSubview(helpLabel)
        headerContainer.addSubview(helpContainer)
        
        headerContainer.addSubview(userImage)
        
        userInfoContainer.addSubview(userIdLabel)
        userInfoContainer.addSubview(userName)
        userInfoContainer.addSubview(seeProfile)
        headerContainer.addSubview(userInfoContainer)
        
        self.addSubview(headerContainer)
        
        setupLayout()
    }
    
    private func setupLayout() {
        
        // Header Container
        headerContainer.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        headerContainer.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        headerContainer.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        // Help Container
        helpContainer.topAnchor.constraint(equalTo: headerContainer.topAnchor).isActive = true
        helpContainer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        helpContainer.leftAnchor.constraint(equalTo: headerContainer.leftAnchor).isActive = true
        helpContainer.rightAnchor.constraint(equalTo: headerContainer.rightAnchor).isActive = true
        
        // Help Label
        helpLabel.centerYAnchor.constraint(equalTo: helpContainer.centerYAnchor).isActive = true
        helpLabel.centerXAnchor.constraint(equalTo: helpContainer.centerXAnchor).isActive = true
        
        // User Image
        userImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        userImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        userImage.centerYAnchor.constraint(equalTo: headerContainer.centerYAnchor).isActive = true
        userImage.centerXAnchor.constraint(equalTo: headerContainer.centerXAnchor).isActive = true
        
        // User Info Container
        userInfoContainer.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 10).isActive = true
        userInfoContainer.leftAnchor.constraint(equalTo: headerContainer.leftAnchor).isActive = true
        userInfoContainer.rightAnchor.constraint(equalTo: headerContainer.rightAnchor).isActive = true
        userInfoContainer.bottomAnchor.constraint(equalTo: headerContainer.bottomAnchor).isActive = true
        
        // User Id
        userIdLabel.topAnchor.constraint(equalTo: userInfoContainer.topAnchor).isActive = true
        userIdLabel.centerXAnchor.constraint(equalTo: userInfoContainer.centerXAnchor).isActive = true

        // User Name
        userName.topAnchor.constraint(equalTo: userIdLabel.bottomAnchor, constant: 5).isActive = true
        userName.centerXAnchor.constraint(equalTo: userInfoContainer.centerXAnchor).isActive = true

        // See profile
        seeProfile.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 5).isActive = true
        seeProfile.centerXAnchor.constraint(equalTo: userInfoContainer.centerXAnchor).isActive = true
    }
    
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
}
