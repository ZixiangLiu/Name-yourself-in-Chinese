//
//  ForthViewController.swift
//  project1
//
//  Created by York on 26/11/2017.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController{
    @IBOutlet var company : UITextField!
    @IBOutlet var jobTitle : UITextField!
    @IBOutlet var phone : UITextField!
    @IBOutlet var email : UITextField!
    @IBOutlet var address : UITextField!
    @IBOutlet var generate : UIButton!
    var transferObj : TransferObj = TransferObj()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "generateBusinessCard" {
            let destination = segue.destination as! FifthViewController
            destination.Company = company
            destination.JobTitle = jobTitle
            destination.Phone = phone
            destination.Email = email
            destination.Address = address
        }
    }

}
