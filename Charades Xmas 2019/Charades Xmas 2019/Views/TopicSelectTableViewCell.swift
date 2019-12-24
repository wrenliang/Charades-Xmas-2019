//
//  TopicSelectTableViewCell.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-21.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class TopicSelectTableViewCell: UITableViewCell {
    lazy var topicImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "first")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var englishLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Futura-Bold", size: 30)
        label.text = "English Here"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var chineseLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Futura-Bold", size: 30)
        label.textAlignment = .center
        label.text = "Chinese Here"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 15, left: 20, bottom: 15, right: 20))
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(topicImage)
        addSubview(englishLabel)
        addSubview(chineseLabel)
        
        contentView.backgroundColor = .white
        setupConstraints()
        contentView.layer.cornerRadius = 30
        contentView.layer.masksToBounds = false
        contentView.clipsToBounds = false
    }
    
    func setupConstraints() {
        topicImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        topicImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 40).isActive = true
        topicImage.heightAnchor.constraint(equalToConstant: 90).isActive = true
        topicImage.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        
        englishLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        englishLabel.leftAnchor.constraint(equalTo: topicImage.rightAnchor, constant: 0).isActive = true
        englishLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        
        chineseLabel.topAnchor.constraint(equalTo: englishLabel.bottomAnchor, constant: 5).isActive = true
        chineseLabel.leftAnchor.constraint(equalTo: topicImage.rightAnchor, constant: 0).isActive = true
        chineseLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        
    }
}
