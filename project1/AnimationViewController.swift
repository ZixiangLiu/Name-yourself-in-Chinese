//
//  AnimationViewController.swift
//  project1
//
//  Created by York on 10/11/2017.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    @IBOutlet var button: UIButton!

    @IBAction func makeItHappen(_ sender: UIButton) {
        UIView.animate(
            withDuration: 2,
            delay: 0,
            options: [],
            animations: { () -> Void in
                self.button.alpha = 0
                
        },
            completion: { (Bool) -> Void in
                self.animateTopRightEnd()
        })
    }
    
    func animateTopRightEnd() {
        UIView.animate(
            withDuration: 2.0,
            animations: { () -> Void in
                self.button.alpha = 1
        })
    }
}
