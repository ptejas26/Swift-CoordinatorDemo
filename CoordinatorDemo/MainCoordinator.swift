//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
    
    func start() {
        let signinCoordinator = SignInChildCoordinator(navigationController: self.navigationController)
        self.childCoordinator.append(signinCoordinator)
        signinCoordinator.mainCoordinator = self
        signinCoordinator.start()
    }
    
    func removeChildCoordinator(_ coordinator1: Coordinator) {
        for (index, coord) in self.childCoordinator.enumerated() {
            if coord === coordinator1 {
                self.childCoordinator.remove(at: index)
                break 
            }
        }
    }
}
