//
//  SecondViewController.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit
class SecondViewController: UITableViewController{
    
    // Need to assign model from first view controller to this one!
    var model: Model!
    
    // need edit and delete
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
        
    }
    
    //
    // helper function that deletes an item from the collection
    //
    func verifyDelete(_ name: String, _ delete: @escaping (UIAlertAction) -> Void) {
        let title = "Delete \(name)?"
        let message = "Are you sure you want to delete this item?"
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        ac.addAction(cancelAction)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: delete)
        ac.addAction(deleteAction)
        
        present(ac, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! NameCell
        cell.updateLabels()
        cell.title.text = model.names[indexPath.row].firstName
        cell.detail.text = model.names[indexPath.row].lastName
        
        return cell
    }
    
    @IBAction func toggleEditMode(_ sender: UIButton) {
        if isEditing == false {
            setEditing(true, animated: true)
            sender.setTitle("Done", for: .normal)
        }
        else {
            setEditing(false, animated: true)
            sender.setTitle("Edit", for: .normal)
        }
    }
    
    /*@IBAction func addName(_ sender: AnyObject) {
        if let index = model.addName() {
            let indexPath = NSIndexPath(row: index)
            tableView.insertRows(at: [indexPath as IndexPath], with: .automatic)
        }
    }*/
}
