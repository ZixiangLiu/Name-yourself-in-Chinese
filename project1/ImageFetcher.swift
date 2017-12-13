//
//  ImageFetcher.swift
//  project1
//
//  Created by Zixiang Liu on 12/13/17.
//  Copyright © 2017 chen, junyang. All rights reserved.

import UIKit

enum ImageFetchError: Error {
    case BadURL
    case ImageFetchFailed
}

enum ImageFetchResult {
    case ImageSuccess(String)
    case ImageFailure(Error)
}

class ImageFetcher {
    let session = URLSession(configuration: URLSessionConfiguration.default)
    
    func fetchImage(url: String, completion: @escaping (ImageFetchResult) -> Void) {
        if let imageURL = URL(string: url) {
            let request = URLRequest(url: imageURL)
            
            let task = session.dataTask(with: request) {
                (data, response, error) -> Void in
                
                guard let imageData = data,
                    let _ = UIImage.init(data: imageData) else {
                        if data == nil {
                            completion(.ImageFailure(error!))
                        }
                        else {
                            completion(.ImageFailure(ImageFetchError.ImageFetchFailed))
                        }
                        return
                }
                
                completion(.ImageSuccess(url))
            }
            task.resume()
        }
        else {
            completion(.ImageFailure(ImageFetchError.BadURL))
        }
    }
}
