//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import Foundation
import UIKit


final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    
    func start() {
        let signInVC = SignInViewController.instantiateStoryBoard()
        signInVC.mainCoordinator = self 
        navigationController?.pushViewController(signInVC, animated: false)
    }
    
    func navigateToSignUpVC() {
        let signUpVC = SignupViewController.instantiateStoryBoard()
        navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    func navigateToForgotPasswordVC() {
        let forgotVC = ForgotPasswordViewController.instantiateStoryBoard()
        navigationController?.pushViewController(forgotVC, animated: true)
    }
    
    func navigateToHomeVC() {
        let homeVC = HomeViewController.instantiateStoryBoard()
        homeVC.mainCoordinator = self
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    func navigateToSignIn_AfterLogout() {
//        let signInVC = SignInViewController.instantiateStoryBoard()
        navigationController?.popToRootViewController(animated: true)
    }
}
