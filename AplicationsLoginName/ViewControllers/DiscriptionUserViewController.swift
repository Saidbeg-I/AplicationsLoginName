//
//  DiscriptionUserViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 22.02.2023.
//

import UIKit

class DiscriptionUserViewController: UIViewController {
    
    @IBOutlet var photoImagegeView: UIImageView! {
        didSet{
            photoImagegeView.layer.cornerRadius = photoImagegeView.frame.height/2
        }
    }
    @IBOutlet var greatingLabel: UILabel!
    var personInfo = ""
    
    var user: User!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImagegeView.image = UIImage(named: user.person.photo)
        view.addVerticalGradientLayer()
        greatingLabel.text = personInfo
    }
    
}
