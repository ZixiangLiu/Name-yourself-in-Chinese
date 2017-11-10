//
//  FirstName.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import Foundation

class FirstName{
    var Word: String
    var BiHua: Int
    var Sex: Int //0: neutral, 1: male, 2: female
    var YiJing: Int
    let Yijings : [String] = ["Y1","Y2","Y3"]
    
    init(Word: String, BihHua: Int, Sex: Int, YiJing: Int){
        self.Word = Word
        self.BiHua = BihHua
        self.Sex = Sex
        self.YiJing = YiJing
    }
}
