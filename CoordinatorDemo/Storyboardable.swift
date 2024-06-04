//
//  Storyboardable.swift
//  CoordinatorDemo
//
//  Created by Tejas on 2024-06-03.
//

import Foundation
import UIKit

protocol Storyboardable: UIViewController {
    static func instantiateStoryBoard() -> Self
}

extension Storyboardable  {
    static func instantiateStoryBoard() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let identifier = String(describing: self)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier) as! Self
        return vc
    }
}
