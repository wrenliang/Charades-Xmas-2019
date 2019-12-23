//
//  ModalWordViewController.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-23.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class ModalWordViewController: UIViewController {
    var chosenWord: String?
    var wordIndex: Int?
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        let newView = ModalWordView()
        
        if let bgColour = colour {
            newView.backgroundColor = bgColour
        }
        
        newView.yesButton.addTarget(self, action: #selector(yesClicked), for: .touchUpInside)
        newView.noButton.addTarget(self, action: #selector(noClicked), for: .touchUpInside)
        
        self.view = newView
    }

    @objc func yesClicked() {
        dismiss(animated: true, completion: {
            print("dismissing from yes")
        })
    }
    
    @objc func noClicked() {
        dismiss(animated: true, completion: {
            print("dismissing from no")
        })
    }
    
}
