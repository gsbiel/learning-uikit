//
//  ContactTableViewCell.swift
//  noStoryBoard
//
//  Created by user164622 on 2/11/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    var contact: Contact? {
        didSet{
            guard let contactItem = contact else{return}
            
            if let name = contactItem.name {
                profileImageView.image = UIImage(named: name)
                nameLabel.text = name
            }
            
            if let jobTitle = contactItem.jobTitle {
                jobTitleDetailedLabel.text = "\(jobTitle)"
            }
            
            if let country = contactItem.country {
                countryImageView.image = UIImage(named: country)
            }
            
        }
    }
    
    private lazy var profileImageView: UIImageView = {
        let profileImage = UIImageView()
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        // Esse modo impede que a imagem seja esticada verticalmente ou horizontalmente
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = 35
        profileImage.clipsToBounds = true
        
        return profileImage
    }()
    
    private lazy var containerView: UIView = {
        let container = UIView()
        
        container.translatesAutoresizingMaskIntoConstraints = false
        // clipsToBounds nesse caso vai impedir que as views filhas ultrapassem as fronteiras do container
        container.clipsToBounds = true
        
        return container
    }()
    
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        return nameLabel
    }()
    
    private lazy var jobTitleDetailedLabel: UILabel = {
       let jobTitle = UILabel()
        
        jobTitle.translatesAutoresizingMaskIntoConstraints = false
        jobTitle.font = UIFont.boldSystemFont(ofSize: 14)
        jobTitle.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        jobTitle.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        jobTitle.layer.cornerRadius = 5
        jobTitle.clipsToBounds = true
        
        return jobTitle
    }()
    
    private lazy var countryImageView: UIImageView = {
       let countryImage = UIImageView()
        
        countryImage.translatesAutoresizingMaskIntoConstraints = false
        countryImage.contentMode = .scaleAspectFill
        countryImage.layer.cornerRadius = 13
        countryImage.clipsToBounds = true
        
        return countryImage
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        
        self.addSubview(profileImageView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(jobTitleDetailedLabel)
        self.addSubview(containerView)
        self.addSubview(countryImageView)
        
        setupLayout()
    }
    
    private func setupLayout() {
        
        // Profile Image View
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        // Container View
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.profileImageView.trailingAnchor, constant: 10).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // Name Label«
        nameLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor).isActive = true
        
        // Job Title Detailed Label
        jobTitleDetailedLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor).isActive = true
        jobTitleDetailedLabel.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor).isActive = true
        //jobTitleDetailedLabel.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>).isActive = true
        
        // Country Image View
        countryImageView.widthAnchor.constraint(equalToConstant: 26).isActive = true
        countryImageView.heightAnchor.constraint(equalToConstant: 26).isActive = true
        countryImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -26).isActive = true
        countryImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }
    
}
