//
//  ViewController.swift
//  noStoryBoard
//
//  Created by user164622 on 2/8/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Criando o container onde vai entrar os elementos do formulario de login
    private var loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.white
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private var passwordTextField: UITextField = {
        let passwordField = UITextField()
        passwordField.backgroundColor = UIColor.white
        passwordField.borderStyle = .roundedRect
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()
    
    private var loginButton: UIButton = {
        let loginBtn = UIButton(type: .system)
        loginBtn.backgroundColor = UIColor.blue
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.tintColor = UIColor.white
        loginBtn.layer.cornerRadius = 5
        loginBtn.clipsToBounds = true
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        return loginBtn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.orange
        
        loginContentView.addSubview(loginTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        
        view.addSubview(loginContentView)
        
    }


}

