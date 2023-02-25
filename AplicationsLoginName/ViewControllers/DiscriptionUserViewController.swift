//
//  DiscriptionUserViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 22.02.2023.
//

import UIKit

class DiscriptionUserViewController: UIViewController {
    
    @IBOutlet var greatingLabel: UILabel!
    
    var personInfo = ""
    
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        greatingLabel.text = personInfo
    }
    
}
