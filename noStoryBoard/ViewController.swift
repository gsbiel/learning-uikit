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
        let loginView = UIView()
        loginView.backgroundColor = UIColor.gray
        loginView.translatesAutoresizingMaskIntoConstraints = false
        return loginView
    }()
    
    private var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Your user name here"
        textField.backgroundColor = UIColor.white
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private var passwordTextField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Your password here"
        passwordField.isSecureTextEntry = true
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
        
        // Estou configurando a funcao que vai ser chamada quando o botao de login for pressionado
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        
        setUpAutoLayout()
        
    }
    
    @objc private func loginButtonPressed() {
        print("Login button has been pressed!")
        if loginTextField.text != "" && passwordTextField.text! != "" {
            print("Login: \(loginTextField.text!)")
            print("Password inserted.")
        }else{
            print("Missing entry data.")
        }
        
    }
    
    private func setUpAutoLayout() {
        // Login Container
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Login Text Field
        loginTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        loginTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        loginTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Password Text Field
        passwordTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // LoginButton
        loginButton.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        loginButton.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
    }
}

