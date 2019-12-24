//
//  ModalWordViewController.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-23.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class ModalWordViewController: UIViewController {
    var chosenWordEng: String?
    var chosenWordChn: String?
    var wordIndex: Int?
    var topicIndex: Int?
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        let newView = ModalWordView()
        
        if let wordNum = wordIndex, let topicNum = topicIndex {
            switch (topicNum) {
                case 0:
                    chosenWordEng = WordData.itemsArrayEng[wordNum]
                    chosenWordChn = WordData.itemsArrayChn[wordNum]
                    break
                case 1:
                    chosenWordEng = WordData.actionsArrayEng[wordNum]
                    chosenWordChn = WordData.actionsArrayChn[wordNum]
                    break
                case 2:
                    chosenWordEng = WordData.cultureArrayEng[wordNum]
                    chosenWordChn = WordData.cultureArrayChn[wordNum]
                    break
                case 3:
                    chosenWordEng = WordData.miscArrayEng[wordNum]
                    chosenWordChn = WordData.miscArrayChn[wordNum]
                    break
                default:
                    print("Error: Invalid Topic Index")
                    break
            }
        }
        
        newView.englishPrompt.text = chosenWordEng
        newView.chinesePrompt.text = chosenWordChn
        
        if let engWord = chosenWordEng, let chnWord = chosenWordChn {
            if engWord.count <= 12 {
                //keep it at 50
            } else if engWord.count <= 16{
                newView.englishPrompt.font = UIFont(name: "Futura-Bold", size: 35)
            } else {
                newView.englishPrompt.font = UIFont(name: "Futura-Bold", size: 25)
            }
            
            if chnWord.count > 7 {
                newView.chinesePrompt.font = UIFont(name: "Futura-Bold", size: 35)
            }
        }
        
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
            
            if let topic = self.topicIndex, let word = self.wordIndex {
                switch (topic) {
                    case 0:
                        WordData.itemsArrayEng.remove(at: word)
                        WordData.itemsArrayChn.remove(at: word)
                        break
                    case 1:
                        WordData.actionsArrayEng.remove(at: word)
                        WordData.actionsArrayChn.remove(at: word)
                        break
                    case 2:
                        WordData.cultureArrayEng.remove(at: word)
                        WordData.cultureArrayChn.remove(at: word)
                        break
                    case 3:
                        WordData.miscArrayEng.remove(at: word)
                        WordData.miscArrayChn.remove(at: word)
                        break
                    default:
                        print("Error: Invalid Topic Index")
                        break
                }
            }
            
            //Debug
            print("Items Count ENG: \(WordData.itemsArrayEng.count)")
            print("Items Count CHN: \(WordData.itemsArrayChn.count)")
            print("Actions Count ENG: \(WordData.actionsArrayEng.count)")
            print("Actions Count CHN: \(WordData.actionsArrayChn.count)")
            print("Culture Count ENG: \(WordData.cultureArrayEng.count)")
            print("Culture Count CHN: \(WordData.cultureArrayChn.count)")
            print("Misc Count ENG: \(WordData.miscArrayEng.count)")
            print("Misc Count CHN: \(WordData.miscArrayChn.count)")
        })
    }
    
    @objc func noClicked() {
        dismiss(animated: true, completion: {
            print("dismissing from no")
            
            //Debug
            print("dismissing from yes")
            print("Items Count ENG: \(WordData.itemsArrayEng.count)")
            print("Items Count CHN: \(WordData.itemsArrayChn.count)")
            print("Actions Count ENG: \(WordData.actionsArrayEng.count)")
            print("Actions Count CHN: \(WordData.actionsArrayChn.count)")
            print("Culture Count ENG: \(WordData.cultureArrayEng.count)")
            print("Culture Count CHN: \(WordData.cultureArrayChn.count)")
            print("Misc Count ENG: \(WordData.miscArrayEng.count)")
            print("Misc Count CHN: \(WordData.miscArrayChn.count)")
        })
    }
    
}
