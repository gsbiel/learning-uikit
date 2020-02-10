//
//  SearchScreenView.swift
//  noStoryBoard
//
//  Created by user164622 on 2/10/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class SearchScreen: UIView {
    
    private lazy var searchResults: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.white
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
        searchResults.topAnchor.constraint(equalTo: self.topAnchor, constant: 5.0).isActive = true
        searchResults.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5.0).isActive = true
        searchResults.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        searchResults.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    override class var requiresConstraintBasedLayout: Bool {
           return true
    }

}
