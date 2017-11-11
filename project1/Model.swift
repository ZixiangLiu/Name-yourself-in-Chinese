//
//  Model.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import Foundation

class Model{
    var Lastname: String
    var Firstname: String
    var Bihua: Int
    var Sex: Int //0:male, 1: female
    var Yijing: Int //index of [YiJing]
    var Lastnames: [String] = ["艾","卞","陈","戴","艾","冯","郭","何","伊","蒋","柯","李","穆","牛","欧","裴","钱","任","孙","田","吴","魏","王","许","杨","赵"]
    var Firstnames: [FirstName] = []
    var outputLastName: String = ""
    var outputFirstNames: [String] = []
    
    init(Lastname: String, Firstname: String, Bihua: Int, Sex: Int, Yijing: Int){
        self.Lastname = Lastname
        self.Firstname = Firstname
        self.Bihua = Bihua
        self.Sex = Sex
        self.Yijing = Yijing
    }
    
    func test(){
        Firstnames.append(FirstName(Word: "昱丁", Bihua: 2, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "甲欣", Bihua: 0, Sex: 0, YiJing: 1))
        Firstnames.append(FirstName(Word: "驿枚", Bihua: 2, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "劲菘", Bihua: 2, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "贽之", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "晨郦", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "易坚", Bihua: 0, Sex: 0, YiJing: 1))
        Firstnames.append(FirstName(Word: "芳征", Bihua: 0, Sex: 0, YiJing: 2))
        Firstnames.append(FirstName(Word: "企超", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "霖一", Bihua: 2, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "韵知", Bihua: 1, Sex: 0, YiJing: 1))
        Firstnames.append(FirstName(Word: "凡笔", Bihua: 0, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "广计", Bihua: 0, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "九亮", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "凌智", Bihua: 1, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "宝轩", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "青合", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "译凡", Bihua: 1, Sex: 0, YiJing: 2))
        Firstnames.append(FirstName(Word: "文姣", Bihua: 0, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "予人", Bihua: 0, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "恩志", Bihua: 1, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "丁迅", Bihua: 0, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "峭云", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "新明", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "亦禅", Bihua: 2, Sex: 0, YiJing: 3))
        Firstnames.append(FirstName(Word: "伟多", Bihua: 1, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "万君", Bihua: 0, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "阿伦", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "龙铁", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "乔榜", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "乙铭", Bihua: 0, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "昭春", Bihua: 1, Sex: 0, YiJing: 3))
        Firstnames.append(FirstName(Word: "方其", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "长太", Bihua: 0, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "振卫", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "名秋", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "曾艺", Bihua: 1, Sex: 0, YiJing: 1))
        Firstnames.append(FirstName(Word: "晋蒲", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "海全", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "文根", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "伯兴", Bihua: 0, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "于青", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "日广", Bihua: 0, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "五周", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "国力", Bihua: 0, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "力朋", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "飞禄", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "大彤", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "子辰", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "诚希", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "秀智", Bihua: 1, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "玉雪", Bihua: 0, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "胭茗", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "语嫣", Bihua: 2, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "清露", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "垂玑", Bihua: 2, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "南春", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "月花", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "庭花", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "柔水", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "风晓", Bihua: 1, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "麒瑛", Bihua: 2, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "萧瑶", Bihua: 2, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "枫丽", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "了霞", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "媛贞", Bihua: 2, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "幼颖", Bihua: 2, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "宛娟", Bihua: 0, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "周琳", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "紫怡", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "淮婷", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "杞文", Bihua: 0, Sex: 0, YiJing: 2))
        Firstnames.append(FirstName(Word: "媛浛", Bihua: 2, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "史悦", Bihua: 1, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "琳治", Bihua: 2, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "长琴", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "王莹", Bihua: 0, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "子默", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "江花", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "试文", Bihua: 1, Sex: 0, YiJing: 3))
        Firstnames.append(FirstName(Word: "讯美", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "怡悦", Bihua: 0, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "妍苹", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "小佳", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "又冉", Bihua: 0, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "圩婷", Bihua: 2, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "怡路", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "雨欣", Bihua: 1, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "婉昀", Bihua: 2, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "免霞", Bihua: 1, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word: "梦云", Bihua: 0, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "冠亚", Bihua: 1, Sex: 0, YiJing: 1))
        Firstnames.append(FirstName(Word: "浩荣", Bihua: 1, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "志博", Bihua: 2, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "子健", Bihua: 1, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "子谦", Bihua: 1, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "盛波", Bihua: 1, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "隽阳", Bihua: 0, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "宇琨", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "梓祥", Bihua: 1, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "灵运", Bihua: 2, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "渊明", Bihua: 2, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "令晖", Bihua: 2, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "审言", Bihua: 2, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "浩然", Bihua: 2, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "白鸬", Bihua: 2, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "毅毅", Bihua: 2, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "哲平", Bihua: 2, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "百帆", Bihua: 2, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "赫君", Bihua: 2, Sex: 1, YiJing: 1))
        Firstnames.append(FirstName(Word: "志罡", Bihua: 2, Sex: 1, YiJing: 2))
        Firstnames.append(FirstName(Word: "叶颦", Bihua: 2, Sex: 1, YiJing: 3))
        Firstnames.append(FirstName(Word: "愉婧", Bihua: 2, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "娟蕾", Bihua: 2, Sex: 2, YiJing: 2))
        Firstnames.append(FirstName(Word: "嫦霞", Bihua: 2, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "雅瑶", Bihua: 2, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "晶瑶", Bihua: 2, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "海娜", Bihua: 2, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "修霞", Bihua: 2, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word: "曼玲", Bihua: 2, Sex: 2, YiJing: 1))
        Firstnames.append(FirstName(Word:"白易", Bihua: 0, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word:"谷山", Bihua: 0, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word:"含玉", Bihua: 0, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word:"元风", Bihua: 0, Sex: 2, YiJing: 3))
        Firstnames.append(FirstName(Word:"听白", Bihua: 0, Sex: 2, YiJing: 3))
    }
    
    func generateLastName(){
        let temp = Array(Lastname)
        if temp.count > 0 {
            let letter = temp[0]
            switch letter{
            case "A" :
                outputLastName = Lastnames[0]
            case "a" :
                outputLastName = Lastnames[0]
            case "B" :
                outputLastName = Lastnames[1]
            case "b" :
                outputLastName = Lastnames[1]
            case "C" :
                outputLastName = Lastnames[2]
            case "c" :
                outputLastName = Lastnames[2]
            case "D" :
                outputLastName = Lastnames[3]
            case "d" :
                outputLastName = Lastnames[3]
            case "E" :
                outputLastName = Lastnames[4]
            case "e" :
                outputLastName = Lastnames[4]
            case "F" :
                outputLastName = Lastnames[5]
            case "f" :
                outputLastName = Lastnames[5]
            case "G" :
                outputLastName = Lastnames[6]
            case "g" :
                outputLastName = Lastnames[6]
            case "H" :
                outputLastName = Lastnames[7]
            case "h" :
                outputLastName = Lastnames[7]
            case "I" :
                outputLastName = Lastnames[8]
            case "i" :
                outputLastName = Lastnames[8]
            case "J" :
                outputLastName = Lastnames[9]
            case "j" :
                outputLastName = Lastnames[9]
            case "K" :
                outputLastName = Lastnames[10]
            case "k" :
                outputLastName = Lastnames[10]
            case "L" :
                outputLastName = Lastnames[11]
            case "l" :
                outputLastName = Lastnames[11]
            case "M" :
                outputLastName = Lastnames[12]
            case "m" :
                outputLastName = Lastnames[12]
            case "N" :
                outputLastName = Lastnames[13]
            case "n" :
                outputLastName = Lastnames[13]
            case "O" :
                outputLastName = Lastnames[14]
            case "o" :
                outputLastName = Lastnames[14]
            case "P" :
                outputLastName = Lastnames[15]
            case "P" :
                outputLastName = Lastnames[15]
            case "Q" :
                outputLastName = Lastnames[16]
            case "q" :
                outputLastName = Lastnames[16]
            case "R" :
                outputLastName = Lastnames[17]
            case "r" :
                outputLastName = Lastnames[17]
            case "S" :
                outputLastName = Lastnames[18]
            case "s" :
                outputLastName = Lastnames[18]
            case "T" :
                outputLastName = Lastnames[19]
            case "t" :
                outputLastName = Lastnames[19]
            case "U" :
                outputLastName = Lastnames[20]
            case "u" :
                outputLastName = Lastnames[20]
            case "V" :
                outputLastName = Lastnames[21]
            case "v" :
                outputLastName = Lastnames[21]
            case "W" :
                outputLastName = Lastnames[22]
            case "w" :
                outputLastName = Lastnames[22]
            case "X" :
                outputLastName = Lastnames[23]
            case "x" :
                outputLastName = Lastnames[23]
            case "Y" :
                outputLastName = Lastnames[24]
            case "y" :
                outputLastName = Lastnames[24]
            case "Z" :
                outputLastName = Lastnames[25]
            case "z" :
                outputLastName = Lastnames[25]
            default:
                outputLastName = "Error"
            }
        }else{
            outputLastName = "空"
        }
        
    }
    
    func generateFirstName(){
        var candidates: [String] = []
        for names in Firstnames{
            if(Bihua == names.BiHua){
                if(((Sex+1)==names.Sex)||(names.Sex==0)){
                    if((Yijing+1)==names.YiJing){
                        candidates.append(names.Word)
                    }
                }
            }
        }
        if(candidates.count==0){
            outputFirstNames = ["Fake"]
        }else{
            if(candidates.count<5){
                outputFirstNames = candidates
            }else{
                var output: [String] = []
                for _ in 1...5 {
                    let rFirstIndex = Int(arc4random_uniform(UInt32(candidates.count)))
                    output.append(candidates[rFirstIndex])
                    candidates.remove(at: rFirstIndex)
                }
                outputFirstNames = output
            }
        }
    }
}
