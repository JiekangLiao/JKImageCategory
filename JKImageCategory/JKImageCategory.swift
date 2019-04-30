//
//  JKImageCategory.swift
//  JKImageCategoryDemo
//
//  Created by QianXi on 2019/4/30.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

extension UIImage {

    
    /// 根据文字生成图片
    ///
    /// - Parameters:
    ///   - text: 文本
    ///   - font: 字体
    ///   - color: 字体颜色
    ///   - backgroundColor: 图片背景色
    ///   - size: 图片尺寸
    /// - Returns: 文字图片
    class func textImage(_ text: String, font: UIFont = UIFont.systemFont(ofSize: 36), color: UIColor = UIColor.white, backgroundColor: UIColor = UIColor.gray, size: CGSize = CGSize(width: 60, height: 60)) -> UIImage{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        label.font = font
        label.text = text
        label.textColor = color
        label.textAlignment = .center
        label.backgroundColor = backgroundColor
        return self.imageForView(label)
    }
    
    
    /// 根据文字生成图片
    ///
    /// - Parameters:
    ///   - text: 文本
    ///   - font: 字体
    ///   - color: 文字颜色
    ///   - size: 图片尺寸
    /// - Returns: 文字图片
    class func textImageRandomBGC(_ text: String, font: UIFont = UIFont.systemFont(ofSize: 36), color: UIColor = UIColor.white, size: CGSize = CGSize(width: 60, height: 60)) -> UIImage{
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        label.font = font
        label.text = text
        label.textColor = color
        label.textAlignment = .center
        label.backgroundColor = UIColor.init(red: (((CGFloat)((arc4random() % 256)) / 255.0)), green: (((CGFloat)((arc4random() % 256)) / 255.0)), blue: (((CGFloat)((arc4random() % 256)) / 255.0)), alpha: 1.0)
        
        return self.imageForView(label)
    }
    
    
    /// 根据视图生成图片
    ///
    /// - Parameter view: 视图
    /// - Returns: 图片
    class func imageForView(_ view: UIView) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(view.frame.size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        view.layer.render(in: context!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}
