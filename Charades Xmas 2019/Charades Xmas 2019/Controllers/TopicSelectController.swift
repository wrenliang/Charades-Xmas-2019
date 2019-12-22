//
//  SecondViewController.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-21.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import UIKit

class TopicSelectController: UIViewController {
    var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        //update arrays if needed
        //mentors = savedMentors
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let newView = TopicSelectView()
        self.tableView = newView.tableView
        
        self.view = newView
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Choose a Topic!"
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(TopicSelectTableViewCell.self, forCellReuseIdentifier: "TopicCell")
        tableView.separatorStyle = .none
    }


}


extension TopicSelectController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WordData.topicsEnglish.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath)
        
        guard let topicCell = cell as? TopicSelectTableViewCell else {
            return cell
        }
        
        topicCell.englishLabel.text = WordData.topicsEnglish[indexPath.row]
        topicCell.chineseLabel.text = WordData.topicsChinese[indexPath.row]
        
        topicCell.contentView.backgroundColor = colours[indexPath.row%4]
        
        return topicCell
    }
    
    
}

