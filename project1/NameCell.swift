//
//  NameCell.swift
//  project1
//
//  Created by Zixiang Liu on 11/10/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class NameCell: UITableViewCell {
    @IBOutlet var title: UILabel!
    @IBOutlet var detail: UILabel!
    
    func updateLabels() {
        let bodyFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        title.font = bodyFont
        
        let caption1Font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        detail.font = caption1Font
    }
}

