//
//  DetailTopicViewController.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-22.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class DetailTopicViewController: UIViewController {
    var topicNum: Int?
    var parentCellColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newView = DetailTopicView()
        
        if let indexNum = topicNum {
            print("setting indexNum")
            newView.englishTitle.text = WordData.topicsEnglish[indexNum]
            newView.chineseTitle.text = WordData.topicsChinese[indexNum]
        }
        
        newView.showButton.addTarget(self, action: #selector(clickedButton), for: .touchUpInside)
        newView.backgroundColor = parentCellColor
        
        //setup newView...
        
        self.view = newView
    }
    
    
    @objc
    func clickedButton() {
        print("clicked button!")
        let modalVC = ModalWordViewController()
        
        modalVC.colour = parentCellColor
        
        self.present(modalVC, animated: true, completion: {})
    }
    
}
