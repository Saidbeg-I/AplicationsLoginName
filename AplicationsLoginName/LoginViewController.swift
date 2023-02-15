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
    
    
    private let user = "Naya"
    private let password = "Alieva"
    // MARK: - Tranthition Func
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welkomeVC = segue.destination as? WelkomeViewController else { return }
        welkomeVC.user = user
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    // MARK: - IBAction Button
    
    @IBAction func pressedLoginButton() {
        guard nameTextField.text == user && passwordTextField.text == password else {

            showAlertOfEmptyValue(
                with: "Invalid logon or password",
                and: "Please enter correct login and password "
            )
            return
        }
        
        performSegue(withIdentifier: "goToWelkome", sender: nil)
        
        
    }
    
   @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
       nameTextField.text = ""
       passwordTextField.text = ""
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlertOfEmptyValue(with:"Ooops!", and: "Your password \(user) 🤓")
        : showAlertOfEmptyValue(with: "Ooops!", and: "Your password \(password) 🤓")
        
    }
    
    // MARK: - private func

    private func showAlertOfEmptyValue(with title: String,and messege: String, textField: UITextField? = nil){
        let alert = UIAlertController.init(title: title, message: messege, preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: "ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
