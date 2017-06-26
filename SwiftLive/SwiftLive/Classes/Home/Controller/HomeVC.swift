//
//  HomeVC.swift
//  SwiftLive
//
//  Created by bidm on 2017/6/23.
//  Copyright © 2017年 bidm. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.brown
        setupLayout()
    }

}


extension HomeVC {
    func setupLayout() {
        setupNavBar()
    }
    
    private func setupNavBar() {
        
//        let btn = UIButton()
//        btn.setImage(UIImage(named: "logo"), for: .normal)
//        btn.sizeToFit()
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        let itemSize = CGSize(width: 40, height: 40)
//        let historyBtn = UIButton()
//        historyBtn.setImage(UIImage(named: "image_my_history"), for: .normal)
//        historyBtn.setImage(UIImage(named: "Image_my_history_click"), for: .highlighted)
//        historyBtn.frame = CGRect(origin: CGPoint.zero, size: itemSize)
//        let historyItem = UIBarButtonItem(customView: historyBtn)
//        
//        let searchBtn = UIButton()
//        searchBtn.setImage(UIImage(named: "btn_search"), for: .normal)
//        searchBtn.setImage(UIImage(named: "btn_search_clicked"), for: .highlighted)
//        searchBtn.frame = CGRect(origin: CGPoint.zero, size: itemSize)
//        let searchItem = UIBarButtonItem(customView: searchBtn)
//        
//        let qrCodeBtn = UIButton()
//        qrCodeBtn.setImage(UIImage(named: "Image_scan"), for: .normal)
//        qrCodeBtn.setImage(UIImage(named: "Image_scan_click"), for: .highlighted)
//        qrCodeBtn.frame = CGRect(origin: CGPoint.zero, size: itemSize)
//        let qrCodeItem = UIBarButtonItem(customView: qrCodeBtn)
        
        // UIBarButtonItem 类方法扩展
//        let historyItem = UIBarButtonItem.creatCustomItem(normalImage: "image_my_history", highlightedImage: "Image_my_history_click", size: itemSize)
//        let searchItem = UIBarButtonItem.creatCustomItem(normalImage: "btn_search", highlightedImage: "btn_search_clicked", size: itemSize)
//        let qrCodeItem = UIBarButtonItem.creatCustomItem(normalImage: "Image_scan", highlightedImage: "Image_scan_click", size: itemSize)
        
        // 构造函数扩展
        let historyItem = UIBarButtonItem(normalImage: "image_my_history", highlightedImage: "Image_my_history_click", size: itemSize)
        let searchItem = UIBarButtonItem(normalImage: "btn_search", highlightedImage: "btn_search_clicked", size: itemSize)
        let qrCodeItem = UIBarButtonItem(normalImage: "Image_scan", highlightedImage: "Image_scan_click", size: itemSize)
        
        // 构造函数的默认参数使用方法
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(normalImage: "logo")
        
        self.navigationItem.rightBarButtonItems = [historyItem,searchItem,qrCodeItem]
    }
}
