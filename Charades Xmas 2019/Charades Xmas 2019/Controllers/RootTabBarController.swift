//
//  FirstViewController.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-21.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = NavigationController(rootViewController: TopicSelectController())
        firstViewController.tabBarItem = UITabBarItem()
        firstViewController.tabBarItem.title = "Topics"
        firstViewController.tabBarItem.tag = 0
        firstViewController.tabBarItem.image = UIImage(systemName: "tray.2")
        
        
        let tabBarList = [firstViewController]
        viewControllers = tabBarList
        
        layoutConstraints()
    }
    
    private func layoutConstraints() {
        
    }


}

