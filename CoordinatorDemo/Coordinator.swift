//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    func start()
}

