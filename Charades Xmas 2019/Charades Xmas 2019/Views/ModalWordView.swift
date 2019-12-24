//
//  ModalWordView.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-23.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class ModalWordView: UIView {
    var colour: UIColor?
    
    
    lazy var englishPrompt: UILabel = {
        let label = UILabel()
        
        label.font = UIFont(name: "Futura-Bold", size: 50)
        label.textColor = .black
        label.text = "English Word"
        
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var chinesePrompt: UILabel = {
        let label = UILabel()
        
        label.font = UIFont(name: "Futura-Bold", size: 50)
        label.textColor = .black
        label.text = "Chinese Word"
        
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var yesButton: UIButton = {
        let button = UIButton()
        
        let greenColor = UIColor(red: 69/255, green: 196/255, blue: 62/255, alpha: 1.0)
        
        button.setTitle("👍", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 50)
        
        button.layer.cornerRadius = 50
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = greenColor
        
        return button
    }()
    
    lazy var noButton: UIButton = {
        let button = UIButton()
        
        let redColor = UIColor(red: 198/255, green: 65/255, blue: 55/255, alpha: 1.0)
        
        button.setTitle("👎", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 50)
        
        button.layer.cornerRadius = 50
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = redColor
        
        return button
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
    
    private func layoutView() {
        if let bgColour = colour {
            self.backgroundColor = bgColour
        }
        
        addSubview(englishPrompt)
        addSubview(chinesePrompt)
        addSubview(yesButton)
        addSubview(noButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        yesButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: UIScreen.main.bounds.width/4).isActive = true
        yesButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -150).isActive = true
        yesButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        yesButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        noButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -UIScreen.main.bounds.width/4).isActive = true
        noButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -150).isActive = true
        noButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        noButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        englishPrompt.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        englishPrompt.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        englishPrompt.topAnchor.constraint(equalTo: topAnchor, constant: 150).isActive = true
        englishPrompt.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        chinesePrompt.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        chinesePrompt.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        chinesePrompt.topAnchor.constraint(equalTo: englishPrompt.bottomAnchor, constant: 150).isActive = true
        chinesePrompt.heightAnchor.constraint(equalToConstant: 75).isActive = true
    }
}
