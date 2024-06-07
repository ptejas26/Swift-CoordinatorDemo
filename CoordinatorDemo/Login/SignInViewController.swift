//
//  LoginViewController.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import UIKit

class SignInViewController: UIViewController, Storyboardable {
    
    weak var signInCoordinator: SignInChildCoordinator?
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInAction() {
        signInCoordinator?.navigateToHomeVC(userNameTextField.text ?? "")
    }
    
    @IBAction func signUpAction() {
        signInCoordinator?.navigateToSignUpVC()
    }
    
    @IBAction func forgotPasswordAction() {
        signInCoordinator?.navigateToForgotPasswordVC()
    }
}
