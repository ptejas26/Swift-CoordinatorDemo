//
//  HomeViewController.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import UIKit

class HomeViewController: UIViewController, Storyboardable {
    
    weak var mainCoordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func logoutAction() {
        mainCoordinator?.navigateToSignIn_AfterLogout()
    }
}
