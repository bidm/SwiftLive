//
//  UIBarButtonItem-Extension.swift
//  SwiftLive
//
//  Created by bidm on 2017/6/26.
//  Copyright © 2017年 bidm. All rights reserved.
//

import UIKit

// UIBarButtonItem 的扩展
// 类方法的扩展前面使用 class修饰        方法的返回值 ->UIBarButtonItem
extension UIBarButtonItem {
    class func creatCustomItem(normalImage: String, highlightedImage: String, size: CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        btn.setImage(UIImage(named: normalImage), for: .normal)
        btn.setImage(UIImage(named: highlightedImage), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        return UIBarButtonItem(customView: btn)
    }
    
//    convenience init(normalImage: String, highlightedImage: String, size: CGSize) {
//        let btn = UIButton()
//        btn.setImage(UIImage(named: normalImage), for: .normal)
//        btn.setImage(UIImage(named: highlightedImage), for: .highlighted)
//        btn.frame = CGRect(origin: CGPoint.zero, size: size)
//        self.init(customView: btn)
//    }
    
    // Swift默认参数  想穿参数就传参数  不想传参数就使用后面的默认的
    convenience init(normalImage: String, highlightedImage: String = "", size: CGSize = CGSize.zero) {
        let btn = UIButton()
        btn.setImage(UIImage(named: normalImage), for: .normal)
        if highlightedImage != "" {
            btn.setImage(UIImage(named: highlightedImage), for: .highlighted)
        }
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        self.init(customView: btn)
    }
}
