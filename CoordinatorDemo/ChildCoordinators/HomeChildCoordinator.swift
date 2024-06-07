//
//  HomeChildCoordinator.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-04.
//

import Foundation
import UIKit

class HomeChildCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = [Coordinator]()

    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    func start() { }
    
    func navigateToHomeVC(_ userName: String) {
        let homeVC = HomeViewController.instantiateStoryBoard()
        homeVC.homeChildCoordinator = self
        homeVC.userName = userName
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    func logoutUser() {
        navigationController?.popToRootViewController(animated: true)
    }
}

class SignInChildCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = [Coordinator]()
    weak var mainCoordinator: MainCoordinator?
    var navigationController: UINavigationController?
    
    func start() {
        let signInVC = SignInViewController.instantiateStoryBoard()
        signInVC.signInCoordinator = self
        navigationController?.pushViewController(signInVC, animated: false)
    }
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    
    func navigateToSignUpVC() {
        let signUpVC = SignupViewController.instantiateStoryBoard()
        navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    func navigateToForgotPasswordVC() {
        let forgotVC = ForgotPasswordViewController.instantiateStoryBoard()
        navigationController?.pushViewController(forgotVC, animated: true)
    }
    
    func navigateToHomeVC(_ userName: String) {
        let homeCoordinator = HomeChildCoordinator(navigationController: self.navigationController)
        self.mainCoordinator?.removeChildCoordinator(self)
        self.childCoordinator.append(homeCoordinator)
        homeCoordinator.navigateToHomeVC(userName)
    }
}
