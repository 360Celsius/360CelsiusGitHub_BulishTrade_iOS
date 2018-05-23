//
//  SplashViewController.swift
//  BulishTrade
//
//  Created by Dennis Shar on 20/05/2018.
//  Copyright © 2018 360 Celsius. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController: UIViewController{
    
    
    @IBOutlet weak var loaginImage: UIImageView!
    var loadingImages: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingImages = createLoadingImageArray(total: 3, imagePrefix: "loading_image")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        animateLoading(imageView: loaginImage,images: loadingImages)

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { // change 2 to desired number of seconds
            // Your code with delay
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController")
            // Alternative way to present the new view controller
            self.present(nextViewController, animated: true, completion: nil)
            
        }
        
    }
    
    func createLoadingImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        
        var imageArray: [UIImage] = []
        
        for imageCount in 1..<total+1 {
            let imageName = "\(imagePrefix)_\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        
        return imageArray
    }
    
    func animateLoading(imageView: UIImageView,images: [UIImage]){
        imageView.animationImages = images
        imageView.animationDuration = 0.7
        imageView.animationRepeatCount = 10
        imageView.startAnimating()
    }
    
}
