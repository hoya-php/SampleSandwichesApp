//
//  MakeThumbNailImage.swift
//  SampleSandwichesApp
//
//  Created by 伊藤和也 on 2020/07/02.
//

import Foundation
import UIKit

class MakeThumbNailImage {
    
    func cropImage(inputImage: UIImage, viewWidth: CGFloat, viewHeight: CGFloat) -> UIImage? {
        
        // リサイズ処理
        let origRef    = inputImage.cgImage
        let origWidth = CGFloat(origRef!.width)
        let origHeight = CGFloat(origRef!.height)
        
        let imageViewScale = max(inputImage.size.width / viewWidth,
                                 inputImage.size.height / viewHeight)

        // Scale cropRect to handle images larger than shown-on-screen size
        let cropZone = CGRect(x:origWidth * imageViewScale,
                              y:origHeight * imageViewScale,
                              width:inputImage.size.width * imageViewScale,
                              height:inputImage.size.height * imageViewScale)

        // Perform cropping in Core Graphics
        guard let cutImageRef: CGImage = inputImage.cgImage?.cropping(to:cropZone)
        else {
            return nil
        }

        // Return image to UIImage
        let croppedImage: UIImage = UIImage(cgImage: cutImageRef)
        return croppedImage
        
    }
    
}
