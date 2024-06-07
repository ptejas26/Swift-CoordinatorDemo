//
//  HomeViewController.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import UIKit

class HomeViewController: UIViewController, Storyboardable {
    
    weak var homeChildCoordinator: HomeChildCoordinator?
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.title = userName != "" ? "Hey \(userName), Welcome" : ""
    }
    
    @IBAction func logoutAction() {
        homeChildCoordinator?.logoutUser()
    }
}
