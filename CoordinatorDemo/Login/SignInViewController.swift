//
//  LoginViewController.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import UIKit

class SignInViewController: UIViewController, Storyboardable {
    
    weak var mainCoordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInAction() {
        mainCoordinator?.navigateToHomeVC()
    }
    
    @IBAction func signUpAction() {
        mainCoordinator?.navigateToSignUpVC()
    }
    
    @IBAction func forgotPasswordAction() {
        mainCoordinator?.navigateToForgotPasswordVC()
    }
}
