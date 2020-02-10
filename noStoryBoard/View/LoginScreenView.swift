//
//  LoginScreenView.swift
//  noStoryBoard
//
//  Created by user164622 on 2/9/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class LoginScreen: UIView{
    
//MARK: - Custom Components
    // Criando o container onde vai entrar os elementos do formulario de login
    private lazy var loginContentView: UIView = {
        let loginView = UIView()
        loginView.backgroundColor = UIColor.gray
        loginView.translatesAutoresizingMaskIntoConstraints = false
        return loginView
    }()
    
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Your user name here"
        textField.backgroundColor = UIColor.white
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Your password here"
        passwordField.isSecureTextEntry = true
        passwordField.backgroundColor = UIColor.white
        passwordField.borderStyle = .roundedRect
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()
    
    private lazy var loginButton: UIButton = {
        let loginBtn = UIButton(type: .system)
        loginBtn.backgroundColor = UIColor.blue
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.tintColor = UIColor.white
        loginBtn.layer.cornerRadius = 5
        loginBtn.clipsToBounds = true
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        return loginBtn
    }()
    
//MARK: - init functions
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
//MARK: - Setting up the custom view and auto layout
    private func setupView() {
        self.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
        loginContentView.addSubview(loginTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        self.addSubview(loginContentView)
        setupLayout()
        setupActions()
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func setupLayout() {
        
        // Login Container
        loginContentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: self.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
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
//MARK: - Configuring actions for buttons
    private func setupActions() {
        // Estou configurando a funcao que vai ser chamada quando o botao de login for pressionado
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
    }
    
    @objc private func loginButtonPressed() {
        print("Login button has been pressed!")
        if loginTextField.text != "" && passwordTextField.text! != "" {
            print("Login: \(loginTextField.text!)")
            print("Password inserted.")
        }else{
            print("Missing entry data.")
        }
        dismissKeyboards()
        cleanTextFields()
    }
    
    private func dismissKeyboards() {
        loginTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }
    private func cleanTextFields() {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }

}

//MARK: - UITextField Delegate Methods
extension LoginScreen: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        loginTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }
}
