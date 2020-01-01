//
//  DetailTopicView.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-22.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class DetailTopicView: UIView {
    var backgroundIndex = 0
    var randomColors = [
        UIColor(red: 255/255, green: 161/255, blue: 0/255, alpha: 1.0),
        UIColor(red: 0/255, green: 173/255, blue: 17/255, alpha: 1.0),
        UIColor(red: 66/255, green: 197/255, blue: 209/255, alpha: 1.0),
        UIColor(red: 188/255, green: 60/255, blue: 62/255, alpha: 1.0),
        UIColor(red: 255/255, green: 231/255, blue: 81/255, alpha: 1.0),
        UIColor(red: 185/255, green: 64/255, blue: 201/255, alpha: 1.0),
        UIColor(red: 205/255, green: 81/255, blue: 255/255, alpha: 1.0),
        UIColor(red: 124/255, green: 69/255, blue: 39/255, alpha: 1.0),
        UIColor(red: 255/255, green: 119/255, blue: 243/255, alpha: 1.0),
        UIColor(red: 119/255, green: 255/255, blue: 151/255, alpha: 1.0)
    ]
    
    lazy var englishTitle: UILabel = {
        let label = UILabel()
        
        label.font = UIFont(name: "Futura-Bold", size: 50)
        label.textColor = .black
        label.text = ""
        
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var chineseTitle: UILabel = {
        let label = UILabel()
        
        label.font = UIFont(name: "Futura-Bold", size: 50)
        label.textColor = .black
        label.text = ""
        
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var showButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("🎲", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 75)
        
        button.layer.cornerRadius = 75
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        
        return button
    }()
    
    lazy var newWordLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont(name: "Futura-Bold", size: 25)
        label.textColor = .black
        label.text = "New word / 新谜语 :"
        
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override class var requiresConstraintBasedLayout: Bool {
      return true
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layoutView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func layoutView() {
        addSubview(englishTitle)
        addSubview(chineseTitle)
        addSubview(showButton)
        addSubview(newWordLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        showButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        showButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100).isActive = true
        showButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        showButton.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        englishTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
        englishTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        englishTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        englishTitle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        chineseTitle.topAnchor.constraint(equalTo: englishTitle.bottomAnchor, constant: 0).isActive = true
        chineseTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        chineseTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        chineseTitle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        newWordLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        newWordLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        newWordLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        newWordLabel.bottomAnchor.constraint(equalTo: showButton.topAnchor, constant: -35).isActive = true
        
        //when view is set up, asynchronously on DispatchQueue.main.async
        DispatchQueue.main.async(execute: {
            self.recurseBackgroundColor()
        })
    }
    
    func recurseBackgroundColor() {
        let oldVal = backgroundIndex
        while (backgroundIndex == oldVal) {
            backgroundIndex = Int.random(in: 0 ..< randomColors.count)
        }
        
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: .allowUserInteraction, animations: {
            self.showButton.backgroundColor = self.randomColors[self.backgroundIndex]
        }, completion: {
            (Bool) -> Void in
            self.recurseBackgroundColor()
        })
    }
}
