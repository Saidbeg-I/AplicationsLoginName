//
//  TabBarViewController.swift
//  AplicationsLoginName
//
//  Created by 1 on 28.02.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       let tabBarAppereance = UITabBarAppearance()
        tabBarAppereance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppereance
        tabBar.scrollEdgeAppearance = tabBarAppereance
    }

}
