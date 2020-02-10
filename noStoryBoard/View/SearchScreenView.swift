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
    }
    
    private func setupLayout() {
        
    }
    
    override class var requiresConstraintBasedLayout: Bool {
           return true
    }

}
