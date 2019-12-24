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
        
        var randomGenIndex: Int = 0 //Dummy initialization value
        var goAhead: Bool = false
        
        let alert = UIAlertController(title: "No words left!", message: "Please choose another category", preferredStyle: .alert)
        let acknowledgeAction = UIAlertAction(title: "Ok", style: .default, handler: { _ in
           print("Dismissing alert")
        })
        alert.addAction(acknowledgeAction)
        
        switch (topicNum) {
        case 0:
            if (WordData.itemsArrayEng.count > 0) {
                randomGenIndex = Int.random(in: 0 ..< WordData.itemsArrayEng.count)
                goAhead = true
            }
            break
        case 1:
            if (WordData.actionsArrayEng.count > 0) {
                randomGenIndex = Int.random(in: 0 ..< WordData.actionsArrayEng.count)
                goAhead = true
            }
            break
        case 2:
            if (WordData.cultureArrayEng.count > 0) {
                randomGenIndex = Int.random(in: 0 ..< WordData.cultureArrayEng.count)
                goAhead = true
            }
            break
        case 3:
            if (WordData.miscArrayEng.count > 0) {
                randomGenIndex = Int.random(in: 0 ..< WordData.miscArrayEng.count)
                goAhead = true
            }
            break
        default:
            print("Error! Invalid topicNum")
            break
        }
        
        
        if (goAhead) {
            let modalVC = ModalWordViewController()
            
            modalVC.colour = parentCellColor
            modalVC.topicIndex = self.topicNum
            modalVC.wordIndex = randomGenIndex
            
            self.present(modalVC, animated: true, completion: {})
        } else {
            //Send an alert notification if array is empty
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
        }
        
        
        
        
    }
    
}
