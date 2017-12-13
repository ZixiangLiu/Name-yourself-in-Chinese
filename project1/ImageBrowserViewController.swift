//
//  ImageViewController.swift
//  project1
//
//  Created by Zixiang Liu on 12/13/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ImageBrowserViewController: UIViewController {
    
    var transferobj : TransferObj = TransferObj()
    @IBOutlet var imageView: UIImageView!
    
    var imageFetcher: ImageFetcher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageFetcher = ImageFetcher()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if let url = self.transferobj.url {
            imageFetcher.fetchImage(url: url) {
                (fetchResult) -> Void in
                
                switch(fetchResult) {
                case let .ImageSuccess(gifimage):
                    OperationQueue.main.addOperation() {
                        self.imageView.image = gifimage
                    }
                case let .ImageFailure(error):
                    //                OperationQueue.main.addOperation {
                    //                    self.imageView.image = #imageLiteral(resourceName: "oops")
                    //                }
                    print("error: \(error)")
                }
                
            }
        }
    }
}
