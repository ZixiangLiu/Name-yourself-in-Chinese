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
    var transferObj : TransferObj = TransferObj()
    var model : Model!
    
    @IBOutlet var company : UILabel!
    @IBOutlet var jobtitle : UILabel!
    @IBOutlet var email : UILabel!
    @IBOutlet var phone : UILabel!
    @IBOutlet var address : UILabel!
    @IBOutlet var chineseName : UILabel!
    @IBOutlet var englishName : UILabel!
    
    @IBOutlet var company2 : UILabel!
    @IBOutlet var jobtitle2 : UILabel!
    @IBOutlet var email2 : UILabel!
    @IBOutlet var phone2 : UILabel!
    @IBOutlet var address2 : UILabel!
    @IBOutlet var chineseName2 : UILabel!
    @IBOutlet var englishName2 : UILabel!
    @IBOutlet weak var english: UIView!
    @IBOutlet weak var chinese: UIView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.model = transferObj.model!
        super.viewWillAppear(animated)
        company.text = Company.text!
        jobtitle.text = JobTitle.text!
        phone.text = "Phone: " + Phone.text!
        email.text = "Email: " + Email.text!
        address.text = Address.text!
        chineseName.text = self.model.Names[self.model.selected]
        englishName.text = self.model.Firstname + " " + self.model.Lastname
        
        company2.text = Company.text!
        jobtitle2.text = JobTitle.text!
        phone2.text = "电话：" + Phone.text!
        email2.text = "邮箱：" + Email.text!
        address2.text = Address.text!
        chineseName2.text = self.model.Names[self.model.selected]
        englishName2.text = self.model.Firstname + " " + self.model.Lastname
    }
    
    @IBAction func saveImage(){
        save(english)
        save(chinese)
    }
    
    func save(_ version: UIView){
        UIGraphicsBeginImageContextWithOptions(CGSize(width: version.frame.width, height: version.frame.height), false, 0);
        self.view.drawHierarchy(in: CGRect(x: -version.frame.origin.x, y: -version.frame.origin.y, width: self.view.frame.width, height: self.view.frame.height), afterScreenUpdates: true)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    }
}
