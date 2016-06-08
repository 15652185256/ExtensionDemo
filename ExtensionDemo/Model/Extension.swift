//
//  Extension.swift
//  ExtensionDemo
//
//  Created by 赵晓东 on 16/6/3.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

//class Extension: NSObject {
//
//}

extension NSString {
    
    func printSelf () -> Void {
        print(self)
    }

}

extension UIView {
    
    func movetoXwithDuration(toX:CGFloat, duration:Double) {
        UIView.animateWithDuration(duration) { 
            self.frame.origin.x = toX
        }
    }
    
    func movetoYwithDuration(toY:CGFloat, duration:Double) {
        UIView.animateWithDuration(duration) {
            self.frame.origin.y = toY
        }
    }
    
    func movetoPwithDuration(toP:CGPoint, duration:Double) {
        UIView.animateWithDuration(duration) {
            self.center = toP
        }
    }
}

extension Int {
    //强制转换
    var FloatValue :CGFloat {
        return CGFloat(self)
    }
    
    var DoubleValue :Double {
        return Double(self)
    }
    
    var StringValue :String {
        return String(self)
    }
}

extension UIImage {
    
    var width:CGFloat{
        return self.size.width
    }
    
    var height:CGFloat{
        return self.size.height
    }
    
    /*
     压缩图片 并返回压缩后的图片
     */
    func imageCompress(targetWidth:CGFloat) -> UIImage {
        let targetHeight = (targetWidth/width) * height
        UIGraphicsBeginImageContext(CGSizeMake(targetWidth, targetHeight))
        self.drawInRect(CGRectMake(0, 0, targetWidth, targetHeight))
        let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
    
    /*
     模糊处理 并返回压缩后的图片
     value 模糊程度
     */
    func blurImage(value:NSNumber) -> UIImage {
        let context = CIContext(options: [kCIContextUseSoftwareRenderer:true])
        let ciImage = CoreImage.CIImage(image:self)
        let blurFiter = CIFilter(name: "CIGaussianBlur")
        blurFiter?.setValue(ciImage, forKey: kCIInputImageKey)
        blurFiter?.setValue(value, forKey: "inputRadius")
        let imageRef = context.createCGImage((blurFiter?.outputImage)!, fromRect: (ciImage?.extent)!)
        let newImage = UIImage(CGImage: imageRef)
        return newImage
    }
}









