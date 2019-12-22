//
//  TopicSelectView.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-21.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit


class TopicSelectView: UIView {
    
    lazy var tableView: UITableView = {
        var table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
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
        backgroundColor = .white
        addSubview(tableView)
        //addSubview(segmentControl)

        setupConstraints()

    }
    private func setupConstraints() {
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    
}
