//
//  WordData.swift
//  Charades Xmas 2019
//
//  Created by Wren Liang on 2019-12-22.
//  Copyright © 2019 Wren Liang. All rights reserved.
//

import Foundation
import UIKit

var WordData = Words()

struct Words {
    let topicsEnglish = ["Items", "Actions", "Culture", "Misc."]
    let topicsChinese = ["东西", "动作", "文化", "其他"]
    
    var itemsArrayEng = [
        "Perfume",
        "Toilet",
        "Shampoo",
        "Headphones",
        "Umbrellas",
        "Mirrors",
        "Dictionary",
        "Piano",
        "Flute",
        "Football",
        "Chalk",
        "Toothbrush",
        "Toothpaste",
        "Chopsticks",
        "Dumplings",
        "Balloons",
        "Washing machine",
        "Backpack",
        "Ice cream",
        "Laptop",
        "Electric fans",
        "Beds",
        "Hair dryer",
        "Cakes",
        "Christmas tree",
        "Onions",
        "Cigarettes",
        "Pillows",
        "Beer",
        "Coke",
        "Refrigerator",
        "Champagne",
        "Telephone",
        "Hamburger",
        "Calculator",
        "Keys",
        "Guitar",
        "Robot",
        "Flowers",
        "Doorbells",
        "Phone",
        "Eyelashes",
        "Instant noodles",
        "Microwave oven",
        "Lego"
    ]
    
    var itemsArrayChn = [
        "香水",
        "厕所",
        "洗发水",
        "耳机",
        "雨伞",
        "镜子",
        "字典",
        "钢琴",
        "长笛",
        "足球",
        "粉笔",
        "牙刷",
        "牙膏",
        "筷子",
        "饺子",
        "气球",
        "洗衣机",
        "书包",
        "冰淇淋",
        "笔记本电脑",
        "电风扇",
        "床",
        "吹风机",
        "蛋糕",
        "圣诞树",
        "洋葱",
        "香烟",
        "枕头",
        "啤酒",
        "可乐",
        "冰箱",
        "香槟",
        "电话",
        "汉堡",
        "计算器",
        "钥匙",
        "吉他",
        "机器人",
        "花",
        "门铃",
        "手机",
        "眼睫毛",
        "方便面",
        "微波炉",
        "乐高积木"
    ]
    
    var actionsArrayEng = [
        "Eating watermelon",
        "Eating banana",
        "Driving a car",
        "Sneezing",
        "Surfing",
        "Taking exam",
        "Photography",
        "Kissing",
        "Cycling",
        "Laying eggs",
        "I love you",
        "Kite flying",
        "Make-up",
        "Applause",
        "Washing clothes",
        "Drooling",
        "Drinking alcohol",
        "Camping",
        "Programming",
        "Play video games",
        "Writing an essay",
        "Horseback riding",
        "Throwing a grenade",
        "Snowball fight",
        "Working out",
        "Yoga",
        "Dating",
        "Stock trading",
        "Shopping",
        "Working",
        "Doing a handstand",
        "Lying",
        "Walking the dog",
        "Hunting",
        "Ballet",
        "Diving",
        "Sailing",
        "Traveling"
    ]
    
    var actionsArrayChn = [
        "吃西瓜",
        "吃香蕉",
        "开汽车",
        "打喷嚏",
        "冲浪",
        "考试",
        "照相",
        "亲吻",
        "骑自行车",
        "下蛋",
        "我爱你",
        "放风筝",
        "化妆",
        "拍掌",
        "洗衣服",
        "流口水",
        "喝酒",
        "露营",
        "编程序",
        "打游戏",
        "写文章",
        "骑马",
        "扔手榴弹",
        "雪球大战",
        "健身",
        "瑜珈",
        "约会",
        "炒股票",
        "买东西",
        "上班",
        "倒立",
        "撒谎",
        "遛狗",
        "打猎",
        "芭蕾舞",
        "潜水",
        "航海",
        "旅游"
    ]
    
    var cultureArrayEng = [
        "Youth (Chinese movie)",
        "The Monkey King",
        "Cupid",
        "Ultraman",
        "Bruce Lee",
        "Transformers",
        "Jay Chou (singer)",
        "Batman",
        "Charlie Chaplin",
        "Lang Lang",
        "Avengers",
        "Pride and Prejudice",
        "Lord of the Rings",
        "Titanic",
        "Prime Minister Trudeau",
        "Christmas Elf",
        "War and Peace",
        "Three Kingdoms (story)",
        "Steve Jobs",
        "Confucius",
        "Tchaikovsky",
        "Fei Cheng Wu Rao (TV Show)",
        "Romeo and Juliet",
        "Charles Darwin",
        "The Art of War by Sun Tzu",
        "President Trump",
        "Chairman Xi Jinping",
        "Star Wars",
        "Harry Potter",
        "Anime",
        "The Lion King",
        "Frozen (movie)",
        "Mulan (movie)",
        "WeChat",
        "Disneyland",
        "Isaac Newton",
        "The Voice of China (TV)",
        "Game of Thrones"
    ]
    
    var cultureArrayChn = [
        "芳华 （电影）",
        "孙悟空",
        "丘比特",
        "奥特曼",
        "李小龙",
        "变形金刚",
        "周杰伦",
        "蝙蝠侠",
        "卓别林",
        "朗朗",
        "复仇者 （电影）",
        "傲慢与偏见",
        "指环王",
        "泰坦尼克號",
        "特鲁多总理",
        "圣诞精灵",
        "战争与和平",
        "三国演义",
        "史蒂夫·乔布斯",
        "孔子",
        "柴可夫斯基",
        "非诚勿扰",
        "罗密欧与朱丽叶",
        "查尔斯·达尔文",
        "孫子兵法",
        "特朗普总统",
        "习近平主席",
        "星球大战",
        "哈利·波特",
        "日本动漫",
        "狮子王",
        "冰雪奇缘 (电影）",
        "花木兰 （电影）",
        "微信",
        "迪士尼乐园",
        "艾萨克·牛顿",
        "中国好声音 （电视）",
        "权力的游戏 （电视）"
    ]
    
    var miscArrayEng = [
        "Vancouver",
        "Rocky Mountains",
        "Yantze river",
        "University",
        "Reindeer",
        "Artificial Intelligence",
        "Curriculum",
        "Tesla",
        "Monkey",
        "Elephant",
        "Kangaroo",
        "Snake",
        "Mouse",
        "Dancers",
        "Singers",
        "Mermaid",
        "Thief",
        "Crazy",
        "Hot",
        "Cold",
        "Thirsty",
        "Sleepy",
        "Anxious",
        "Angry",
        "Delicious",
        "Expensive",
        "The young",
        "The sick",
        "The wealthy",
        "Dirty",
        "Penguin",
        "Beggars",
        "Wind",
        "Police",
        "Crab",
        "Tiger",
        "Rabbit",
        "Toothache",
        "Marijuana",
        "Pregnancy",
        "Beer belly",
        "Calculus",
        "Engineer"
    ]
    
    var miscArrayChn = [
        "温哥华",
        "落基山",
        "长江",
        "大学",
        "驯鹿",
        "人工智能",
        "课程表",
        "特斯拉 （汽车）",
        "猴子",
        "大象",
        "袋鼠",
        "蛇",
        "老鼠",
        "舞蹈演员",
        "歌唱者",
        "美人鱼",
        "小偷",
        "疯狂的",
        "热的",
        "冷的",
        "渴的",
        "困的",
        "焦虑的",
        "生气的",
        "美味的",
        "昂贵的",
        "年轻的",
        "生病的",
        "富裕的",
        "脏的",
        "企鹅",
        "乞丐",
        "风",
        "警察",
        "螃蟹",
        "老虎",
        "兔子",
        "牙痛",
        "大麻",
        "怀孕",
        "啤酒肚",
        "微积分学",
        "工程师"
    ]
}


var colours: [UIColor] = [
UIColor(displayP3Red: 234/255, green: 249/255, blue: 230/255, alpha: 1),
UIColor(displayP3Red: 255/255, green: 233/255, blue: 166/255, alpha: 1),
UIColor(displayP3Red: 230/255, green: 248/255, blue: 249/255, alpha: 1),
UIColor(displayP3Red: 250/255, green: 208/255, blue: 202/255, alpha: 1)]
