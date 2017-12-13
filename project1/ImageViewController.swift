//
//  ImageViewController.swift
//  project1
//
//  Created by Zixiang Liu on 12/13/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ImageBrowserViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    
    var imageFetcher: ImageFetcher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.masksToBounds = true
        
        imageFetcher = ImageFetcher()
    }
    
    @IBAction func fetchImage(_ sender: Any) {
        let url = "https://raw.githubusercontent.com/ZixiangLiu/Name-yourself-in-Chinese/master/GIF/1.GIF"
        
        imageFetcher.fetchImage(url: url) {
            (fetchResult) -> Void in
            
            switch(fetchResult) {
            case let .ImageSuccess(url):
                let anim = AnimatedImage(url: url)!
                var arr = [CGImage]()
                for ix in 0..<anim.frameCount {
                    arr.append(anim.imageAtIndex(index: ix)!)
                }
                var arr2 = arr.map {UIImage(cgImage:$0)}
                let iv = UIImageView()
                iv.animationImages = arr2
                iv.animationDuration = anim.duration
                iv.frame.origin = CGPoint(0,100)
                iv.frame.size = arr2[0].size
                self.view.addSubview(iv)
                delay(2) {
                    iv.startAnimating()
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
