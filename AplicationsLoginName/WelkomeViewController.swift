//
//  WelkomeViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 13.02.2023.
//

import UIKit

class WelkomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var emodjiLabel: UILabel!
    
    var nameLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = nameLabel
        emodjiLabel.text = "👋"
        
    }
    
}
