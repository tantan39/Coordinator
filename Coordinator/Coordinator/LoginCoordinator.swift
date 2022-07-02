//
//  LoginCoordinator.swift
//  Coordinator
//
//  Created by Tan Tan on 7/2/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navController: UINavigationController
    
    var childCoordinators: [Coordinator] = []
    
    internal init(navController: UINavigationController) {
        self.navController = navController
    }
    
    func start() {
        let loginVC = LoginVC.initiateFromStoryboard()
        loginVC.coordinator = self
        navController.pushViewController(loginVC, animated: true)
    }
 
    func showResetVC() {
        let vc = ResetVC.initiateFromStoryboard()
        navController.pushViewController(vc, animated: true)
    }
}
