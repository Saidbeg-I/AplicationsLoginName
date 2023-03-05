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
    
    
    private var user = User.getUserData()
    
    
    
    // MARK: - Prepare Func
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard nameTextField.text == user.login, passwordTextField.text == user.password else {

            showAlertOfEmptyValue(
                with: "Invalid logon or password",
                and: "Please enter correct login and password "
            )
            return
        }
        
        guard  let tabBarVC = segue.destination as? UITabBarController else { return }
        guard  let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welkomeVC = viewController as? WelkomeViewController {
                welkomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                navigationVC.navigationItem.title = user.person.fullName
                guard let userInfoVC = navigationVC.topViewController as? UserInfoViewController else {
                return
                }
                userInfoVC.navigationItem.title = user.person.fullName
                userInfoVC.user = user
            }
        }
    }
    // MARK: - Settint keyboard tuch pressed
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    // MARK: - IBAction Button
    
    @IBAction func pressedLoginButton() {
        
        performSegue(withIdentifier: "goToWelkome", sender: nil)
        
    }
    
   @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
       nameTextField.text = ""
       passwordTextField.text = ""
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlertOfEmptyValue(with:"Ooops!", and: "Your password \(user.person.name) 🤓")
        : showAlertOfEmptyValue(with: "Ooops!", and: "Your password \(user.password) 🤓")
        
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
