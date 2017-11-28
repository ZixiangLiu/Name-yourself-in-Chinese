//
//  FifthViewController.swift
//  project1
//
//  Created by York on 26/11/2017.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController{
    var Company : UITextField!
    var JobTitle : UITextField!
    var Phone : UITextField!
    var Email : UITextField!
    var Address : UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(Company.text!)
        print(JobTitle.text!)
        print(Phone.text!)
        print(Email.text!)
        print(Address.text!)
    }
}
