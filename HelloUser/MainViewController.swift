//
//  ViewController.swift
//  HelloUser
//
//  Created by Анастасия Кучер on 11.01.2025.
//

import UIKit

final class MainViewController: UIViewController {

    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    private var user = "User"
    private var passwordUser = "Password"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeUserVC = segue.destination as? WelcomeUserViewController else {return}
        welcomeUserVC.userNameWelcome = userName.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           super.touchesBegan(touches, with: event)
           view.endEditing(true) // Это закроет клавиатуру
       }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userName.text == user, password.text == passwordUser else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        // Введенное имя валидно, разрешаем переход
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeUserViewController else {return}
            self.userName.text = ""
            self.password.text = ""
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops", andMessage: "Your login is User 😉")
        : showAlert(withTitle: "Oops", andMessage: "Your password is Password 😉")
    }

    
}

// MARK: - AlertController

extension MainViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
