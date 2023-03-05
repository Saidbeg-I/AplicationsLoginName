//
//  WelkomeViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 13.02.2023.
//

import UIKit

final class WelkomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var emodjiLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        userNameLabel.text = "Welkome , \(user.person.fullName)"
        emodjiLabel.text = "👋"
        
    }
    
}
