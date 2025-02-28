//
//  BioKannaViewController.swift
//  HelloUser
//
//  Created by Анастасия Кучер on 16.02.2025.
//

import UIKit

class BioKannaViewController: UIViewController {
    @IBOutlet var bioKannaLabel: UILabel!
    
    override func viewDidLoad() {
        bioKannaLabel.text = userInfoLabel.person.bio
        
        super.viewDidLoad()
        view.setGradientBackground(colors: [UIColor.red, UIColor.blue], direction: .vertical)
    }

}
