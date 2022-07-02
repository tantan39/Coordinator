//
//  ViewController.swift
//  Coordinator
//
//  Created by Tan Tan on 7/2/22.
//

import UIKit

class ViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoginTapped(_ sender: Any) {
        coordinator?.showLogin()
    }
    
    @IBAction func btnRegisterTapped(_ sender: Any) {
        coordinator?.showRegister()
    }
}

