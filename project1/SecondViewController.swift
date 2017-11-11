//
//  SecondViewController.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit
class SecondViewController: UITableViewController{
    
    /*
    var LastName: String = ""
    var FirstNames: [String] = []
    
    var model : Model!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LastName = model.outputLastName
        FirstNames = model.outputFirstNames
    }
    */
    
    var label1: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    var label4: UILabel!
    var label5: UILabel!
    
    var Names = [String]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Names.append(label1.text!)
        Names.append(label2.text!)
        Names.append(label3.text!)
        Names.append(label4.text!)
        Names.append(label5.text!)
        for i in Names{
            print(i)
        }
    }
    
}
