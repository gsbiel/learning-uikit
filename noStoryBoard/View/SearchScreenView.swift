//
//  SearchScreenView.swift
//  noStoryBoard
//
//  Created by user164622 on 2/10/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class SearchScreen: UIView {
    
    lazy var searchResults: UITableView = {
        // Passei frame zero pois a tabela vai ser configurada com Auto Layout
        // O objetivo era setar a propriedade style com .grouped que faz com que o header seja afetado pelo scroll
        // O padrao e .plain, o que faz o header da tabela ficar fixo no topo.
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.white
        // Estou usando celulas customizadas, implementada na classe ContactTableViewCell.
        // Essa celula esta sendo registrada com o identificador contactCell
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "contactCell")
        // Estou usando um Header customizado, implementado na classe TableHeader.
        // Esse header esta sendo registrado com o identificador headerCell
        tableView.register(TableHeader.self, forHeaderFooterViewReuseIdentifier: "headerCell")
        // Nao qeuro que apareca nenhum tipo de separador entre as celulas.
        tableView.separatorStyle = .none
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
        self.addSubview(searchResults)
        setupLayout()
    }
    
    private func setupLayout() {
        searchResults.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        searchResults.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        searchResults.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        searchResults.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    override class var requiresConstraintBasedLayout: Bool {
           return true
    }

}

class TableHeader: UITableViewHeaderFooterView {
    
    private lazy var leftCircleView: UIView = {
        let circle = UIView()
        circle.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        circle.layer.cornerRadius = 35
        circle.translatesAutoresizingMaskIntoConstraints = false
        return circle
    }()
    
    private lazy var rightCircleView: UIView = {
        let circle = UIView()
        circle.layer.cornerRadius = 35
        circle.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        circle.translatesAutoresizingMaskIntoConstraints = false
        return circle
    }()
    
    private lazy var labelContainer: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    private lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.text = "My Table"
        label.translatesAutoresizingMaskIntoConstraints = false
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
        self.addSubview(leftCircleView)
        labelContainer.addSubview(headerLabel)
        self.addSubview(rightCircleView)
        self.addSubview(labelContainer)
        setupLayout()
    }
    
    private func setupLayout() {
        
        // leftCircleView - Auto Layout
        leftCircleView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        leftCircleView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        leftCircleView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        leftCircleView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        // rightCircleView - Auto Layout
        rightCircleView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        rightCircleView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        rightCircleView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        rightCircleView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        // labelContainer
        labelContainer.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        labelContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        labelContainer.leadingAnchor.constraint(equalTo: leftCircleView.trailingAnchor).isActive = true
        labelContainer.trailingAnchor.constraint(equalTo: rightCircleView.leadingAnchor).isActive = true
        
        // headerLabel - Auto Layout
        headerLabel.centerXAnchor.constraint(equalTo: labelContainer.centerXAnchor).isActive = true
        headerLabel.centerYAnchor.constraint(equalTo: labelContainer.centerYAnchor ).isActive = true
    }
    
    override class var requiresConstraintBasedLayout: Bool {
           return true
    }
}
