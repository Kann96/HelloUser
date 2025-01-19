//
//  WelcomeUserViewController.swift
//  HelloUser
//
//  Created by Анастасия Кучер on 14.01.2025.
//

import UIKit

class WelcomeUserViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
