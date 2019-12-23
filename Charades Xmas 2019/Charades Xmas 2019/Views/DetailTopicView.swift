//
//  DetailTopicView.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-22.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class DetailTopicView: UIView {
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
        
        button.setTitle("Random word!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 30)
        
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        
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
    func layoutView() {
        addSubview(englishTitle)
        addSubview(chineseTitle)
        addSubview(showButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        showButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        showButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        showButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/1.5).isActive = true
        showButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        englishTitle.bottomAnchor.constraint(equalTo: showButton.topAnchor, constant: -UIScreen.main.bounds.height/8).isActive = true
        englishTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        englishTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        englishTitle.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        chineseTitle.topAnchor.constraint(equalTo: showButton.bottomAnchor, constant: UIScreen.main.bounds.height/8).isActive = true
        chineseTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        chineseTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        chineseTitle.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
}
