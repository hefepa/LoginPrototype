//
//  ViewController.swift
//  LoginPagePrototype
//
//  Created by WEMA on 08/01/2024.
//

import UIKit

class ViewController: UIViewController {
    // UIView
    let containerView: UIView = {
        var myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .systemTeal
        return myView
    }()
    // EmailField
    let emailTextField: UITextField = {
        var emailField = UITextField()
        emailField.translatesAutoresizingMaskIntoConstraints = false
        emailField.backgroundColor = .white
        emailField.placeholder = "Enter your email"
        emailField.borderStyle = .roundedRect
        emailField.font = .systemFont(oize: 15, weight: .semibold)
        return emailField
    }()
    //PasswordField
    let passwordTextField: UITextField = {
        var passwordField = UITextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.backgroundColor = .white
        passwordField.placeholder = "Enter your password"
        passwordField.borderStyle = .roundedRect
        passwordField.font = .systemFont(ofSize: 15, weight: .semibold)
        return passwordField
    }()
    
    //Email label
    let emailLabel: UILabel = {
        var email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = ""
        email.textColor = .white
        return email
        
    }()
    
    let passwordLabel: UILabel = {
        var password = UILabel()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.text = ""
        password.textColor = .white
        return password
    }()
    
    
    let loginButton: UIButton = {
        var login = UIButton()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.setTitle("Login", for: .normal)
        login.backgroundColor = .systemMint
        login.layer.cornerRadius = 10
        return login
    }()
    
    let forgetPasswordLabel: UILabel = {
        var forgetPassword = UILabel()
        forgetPassword.translatesAutoresizingMaskIntoConstraints = false
        forgetPassword.text = "Forget Password?"
        forgetPassword.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        forgetPassword.textColor = .white
        forgetPassword.textAlignment = .center
        return forgetPassword
    }()
    
    let outputLabel: UILabel = {
        var output = UILabel()
        output.translatesAutoresizingMaskIntoConstraints = false
        output.text = ""
        output.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        output.textColor = .white
        output.textAlignment = .center
        return output
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.addSubview(containerView)
        containerView.addSubview(emailTextField)
        containerView.addSubview(emailLabel)
        containerView.addSubview(passwordTextField)
        containerView.addSubview(passwordLabel)
        containerView.addSubview(loginButton)
        containerView.addSubview(forgetPasswordLabel)
        containerView.addSubview(outputLabel)

        
        
        //View Constraint
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: 370).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //EmailTextField Constraint
        emailTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        emailTextField.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -270).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Email label constraint
        emailLabel.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor).isActive = true
        emailLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        

        //PasswordTextField Constraint
        passwordTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //Password Label constraint
        passwordLabel.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor).isActive = true
        passwordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
        
        //Login Constraint
        loginButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 60).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -60).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 20).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        
        
        
        forgetPasswordLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 110).isActive = true
        forgetPasswordLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -100).isActive = true
        forgetPasswordLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10).isActive = true
        
        outputLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30).isActive = true
        outputLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30).isActive = true
        outputLabel.topAnchor.constraint(equalTo: forgetPasswordLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    @objc func loginAction(){
        let emailDefault = "Paul@gmail.com"
        let passwordDefault = "123456"
        
        passwordLabel.text = ""
        emailLabel.text = ""
        
        let emailInput = emailTextField.text!
        let passwordInput = passwordTextField.text!
        
        if emailInput.isEmpty{
            emailLabel.text = "Supply your email"
        }else if passwordInput.isEmpty{
            passwordLabel.text = "Supply your password"
        }else{
            if (emailInput != emailDefault || passwordInput != passwordDefault){
                outputLabel.text = "Invalid login details"
            }else{
                outputLabel.text = "Login successful"
                emailTextField.text = ""
                passwordTextField.text = ""
            }
        }
    }

}

