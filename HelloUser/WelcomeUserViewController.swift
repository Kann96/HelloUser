//
//  WelcomeUserViewController.swift
//  HelloUser
//
//  Created by Анастасия Кучер on 14.01.2025.
//

import UIKit

class WelcomeUserViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userNameWelcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + userNameWelcome + "!" + " 👋"
    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}


