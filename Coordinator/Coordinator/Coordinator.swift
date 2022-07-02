//
//  Coordinator.swift
//  Coordinator
//
//  Created by Tan Tan on 7/2/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    func start()
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
        childCoordinators.append(loginCoordinator)
        loginCoordinator.start()
    }
    
    func showRegister() {
        let register = RegisterVC.initiateFromStoryboard()
        navController.pushViewController(register, animated: true)
    }
}
