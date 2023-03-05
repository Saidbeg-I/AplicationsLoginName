//
//  UserDiscriptionViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 21.02.2023.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var surNameLabel: UILabel!
    @IBOutlet var countrieUserLabel: UILabel!
    @IBOutlet var ageUserLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        userNameLabel.text = user.person.name
        surNameLabel.text = user.person.surName
        countrieUserLabel.text = user.person.countrie
        ageUserLabel.text = user.person.age
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let discriptionVC = segue.destination as? DiscriptionUserViewController else { return }
        discriptionVC.personInfo = user.person.infoPerson
        discriptionVC.user = user
        
    }
}
