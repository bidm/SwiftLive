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
    
//    private func addChildVCs1(vcName: String) {
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
