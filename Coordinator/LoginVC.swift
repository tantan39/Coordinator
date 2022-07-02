//
//  LoginVC.swift
//  Coordinator
//
//  Created by Tan Tan on 7/2/22.
//

import Foundation
import UIKit

class LoginVC: UIViewController {
    weak var coordinator: LoginCoordinator?
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func btnReset_Pressed(_ sender: Any) {
        coordinator?.showResetVC()
    }
}
