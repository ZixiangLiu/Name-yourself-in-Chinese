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
    var YiJing: Int //0: easy, 1: normal, 2: hard
    let Yijings : [String] = ["trivial","Modish","Quaint"]
    var meaning : String = "Young Grandma"
    var pronunciation : String = "Nai Zi Yang"
    
    
    init(Word: String, Bihua: Int, Sex: Int, YiJing: Int, meaning: String, pronunciation: String){
        self.Word = Word
        self.BiHua = Bihua
        self.Sex = Sex
        self.YiJing = YiJing
        self.meaning = meaning
        self.pronunciation = pronunciation
    }
}
