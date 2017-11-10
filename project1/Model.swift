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
    var Lastnames: [String] = ["L1","L2","L3","L4","L5"]
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
        let F1 = FirstName(Word: "12m0", BihHua: 12, Sex: 1, YiJing: 0)
        let F2 = FirstName(Word: "6m0", BihHua: 6, Sex: 1, YiJing: 0)
        let F3 = FirstName(Word: "12f0", BihHua: 12, Sex: 2, YiJing: 0)
        let F4 = FirstName(Word: "6f0", BihHua: 6, Sex: 2, YiJing: 0)
        let F5 = FirstName(Word: "12n0", BihHua: 12, Sex: 0, YiJing: 0)
        let F6 = FirstName(Word: "6n0", BihHua: 6, Sex: 0, YiJing: 0)
        let F7 = FirstName(Word: "12n1", BihHua: 12, Sex: 0, YiJing: 1)
        let F8 = FirstName(Word: "12n2", BihHua: 12, Sex: 0, YiJing: 2)
        Firstnames.append(F1)
        Firstnames.append(F2)
        Firstnames.append(F3)
        Firstnames.append(F4)
        Firstnames.append(F5)
        Firstnames.append(F6)
        Firstnames.append(F7)
        Firstnames.append(F8)
    }
    
    func generateLastName(){
        let rLastIndex = Int(arc4random_uniform(UInt32(Lastnames.count)))
        outputLastName = Lastnames[rLastIndex]
    }
    
    func generateFirstName(){
        var candidates: [String] = []
        for names in Firstnames{
            if(Bihua >= names.BiHua){
                if(((Sex+1)==names.Sex)||(names.Sex==0)){
                    if(Yijing==names.YiJing){
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
