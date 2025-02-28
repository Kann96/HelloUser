//
//  KannaViewController.swift
//  HelloUser
//
//  Created by Анастасия Кучер on 11.02.2025.
//

import UIKit

class KannaViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userOldLabel: UILabel!
    @IBOutlet var userCompanyLabel: UILabel!
    
    
    override func viewDidLoad() {
        userNameLabel.text = userInfoLabel.person.name
        userOldLabel.text = userInfoLabel.person.old
        userCompanyLabel.text = userInfoLabel.person.company
        
        super.viewDidLoad()
        view.setGradientBackground(colors: [UIColor.red, UIColor.blue], direction: .vertical)
        
    }
}
