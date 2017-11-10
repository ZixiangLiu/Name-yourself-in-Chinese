//
//  ViewController.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var LastName : UITextField!
    @IBOutlet var FirstName : UITextField!
    @IBOutlet var BiHua : UITextField!
    @IBOutlet var Sex : UISegmentedControl!
    @IBOutlet var YiJing : UISegmentedControl!
    var model : Model!
    @IBOutlet var label1 : UILabel!
    @IBOutlet var label2 : UILabel!
    @IBOutlet var label3 : UILabel!
    @IBOutlet var label4 : UILabel!
    @IBOutlet var label5 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LastName.autocorrectionType = .no
        FirstName.autocorrectionType = .no
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(){
        let model = Model(Lastname: LastName.text!, Firstname: FirstName.text!, Bihua: Int(BiHua.text!)!, Sex: Sex.selectedSegmentIndex, Yijing: YiJing.selectedSegmentIndex)
        self.model = model
        model.test()
        model.generateLastName()
        model.generateFirstName()
        let labels : [UILabel] = [label1,label2,label3,label4,label5]
        for i in 0..<model.outputFirstNames.count{
            labels[i].text = "\(model.outputLastName)\(model.outputFirstNames[i])"
        }
        for i in model.outputFirstNames.count..<5{
            labels[i].text = "empty"
        }
    }
    
    func textField(_ textField:UITextField,
                   shouldChangeCharactersIn range:NSRange,
                   replacementString string:String)->Bool{
        return (Int(string) != nil) || string == ""
    }
}

