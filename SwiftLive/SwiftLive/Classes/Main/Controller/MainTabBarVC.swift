//
//  MainTabBarVC.swift
//  SwiftLive
//
//  Created by bidm on 2017/6/21.
//  Copyright © 2017年 bidm. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVCs(sbName: "Home")
        addChildVCs(sbName: "Follow")
        addChildVCs(sbName: "Live")
        addChildVCs(sbName: "Me")
    }

    private func addChildVCs(sbName: String) {
        let childVC = UIStoryboard(name:sbName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
