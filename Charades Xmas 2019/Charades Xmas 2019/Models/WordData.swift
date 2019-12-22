//
//  WordData.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-22.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import Foundation
import UIKit

let WordData = Words()

struct Words {
    let topicsEnglish = ["Movies", "People", "Places", "Actions"]
    let topicsChinese = ["电影", "人", "地方", "动作"]
    struct Movies {
        var movieList: [String] = []
    }
}


var colours: [UIColor] = [
UIColor(displayP3Red: 234/255, green: 249/255, blue: 230/255, alpha: 1),
UIColor(displayP3Red: 255/255, green: 233/255, blue: 166/255, alpha: 1),
UIColor(displayP3Red: 230/255, green: 248/255, blue: 249/255, alpha: 1),
UIColor(displayP3Red: 250/255, green: 208/255, blue: 202/255, alpha: 1)]
