//
//  ViewController.swift
//  GoodbyeStoryboard
//
//  Created by Алексей Мальков on 01.12.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var loginButton: UIButton!
    var nameTextField: UITextField!
    var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        loginButton.addTarget(self,
                              action: #selector(handleLoginTouchUpInseide),
                              for: .touchUpInside)
        
        nameTextField = UITextField(frame: .zero)
        nameTextField.placeholder = "Login Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        
        passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        constraintsInit()
        
    }
    
    func constraintsInit(){
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            
            nameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
            nameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
        ])
    }
    
    @objc func handleLoginTouchUpInseide(){
        print("Login has beeen tapped")
        if nameTextField.isFirstResponder{
            nameTextField.resignFirstResponder()
        }
        print(nameTextField.text!)
        if passwordTextField.isFirstResponder{
            passwordTextField.resignFirstResponder()
        }
        print(passwordTextField.text!)
    }


}

