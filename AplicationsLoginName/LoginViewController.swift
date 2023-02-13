//
//  ViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 13.02.2023.
//



import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Tranthition Func
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard nameTextField.text == "Naya" && passwordTextField.text == "Alieva" else {
            
            showAlertOfEmptyValue(
                with: "Invalid logon or password",
                and: "Please enter correct login and password "
            )
            return
        }
        
        guard let welkomeVC = segue.destination as? WelkomeViewController else { return }
        welkomeVC.nameLabel = nameTextField.text
    }
    
   @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let welkomeVC = segue.source as? WelkomeViewController else { return }
        welkomeVC.nameLabel = ""
        nameTextField.text = welkomeVC.nameLabel
       passwordTextField.text = welkomeVC.nameLabel
    }
    
    // MARK: - Description Action Button
    
    @IBAction func userNameAlertButton() {
        showAlertNameButton(with: "Ooops!", and: "Your name Naya 😉")
        
    }
    @IBAction func passwordAlertButton() {
        showAlertPasswordButton(with: "Ooops!", and: "Your password Alieva 🤓")
        }
    // MARK: - private func
    
    private func showAlertNameButton(with title: String,and messege: String){
        let alert = UIAlertController.init(title: title, message: messege, preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: "ok", style: .default) { _ in
            self.nameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    private func showAlertPasswordButton(with title: String,and messege: String){
        let alert = UIAlertController.init(title: title, message: messege, preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: "ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    private func showAlertOfEmptyValue(with title: String,and messege: String){
        let alert = UIAlertController.init(title: title, message: messege, preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: "ok", style: .default) { _ in
            self.nameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

