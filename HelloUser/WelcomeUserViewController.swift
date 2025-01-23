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
        view.setGradientBackground(colors: [UIColor.red, UIColor.blue], direction: .vertical)
        welcomeLabel.text = "Welcome, " + userNameWelcome + "!" + " 👋"
    }
    

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}

enum GradientDirection {
    case vertical
    case horizontal
    case diagonal
}

extension UIView {
    func setGradientBackground(colors: [UIColor], direction: GradientDirection = .vertical) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        
        switch direction {
        case .vertical:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        case .horizontal:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        case .diagonal:
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        }
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

