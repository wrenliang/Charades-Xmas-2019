//
//  NavigationController.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-21.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
