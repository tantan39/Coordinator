//
//  Coordinator.swift
//  Coordinator
//
//  Created by Tan Tan on 7/2/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    func removeCoordinatorFromParents(_ coordinator: Coordinator) {
        for (index, item) in childCoordinators.enumerated() {
            if item === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}

class MainCoordinator: Coordinator {
    var navController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        let vc = ViewController.initiateFromStoryboard()
        vc.coordinator = self
        navController.setViewControllers([vc], animated: true)
    }
    
    func showLogin() {
        let loginCoordinator = LoginCoordinator(navController: navController)
        loginCoordinator.parents = self
        childCoordinators.append(loginCoordinator)
        loginCoordinator.start()
    }
    
    func showRegister() {
        let register = RegisterVC.initiateFromStoryboard()
        navController.pushViewController(register, animated: true)
    }
}
