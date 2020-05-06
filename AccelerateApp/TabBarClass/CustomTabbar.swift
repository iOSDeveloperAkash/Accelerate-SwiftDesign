//
//  CustomTabbar.swift
//  AccelerateApp
//
//  Created by Abhishek Rajput on 03/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class CustomTabbar: UITabBarController {
    let button = UIButton.init(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // button.setTitle("Home", for: .normal)
        self.delegate = self
        button.setImage(UIImage(named: "Home"), for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.yellow, for: .highlighted)
        
        button.backgroundColor = .white
        button.layer.cornerRadius = 32
        button.addTarget(self, action: #selector(homeButtonTapped(sender:)), for: .touchUpInside)
        //        button.layer.borderWidth = 0.1
        //button.layer.borderColor = UIColor.yellow.cgColor
        self.view.insertSubview(button, aboveSubview: self.tabBar)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // safe place to set the frame of button manually
        let window = UIApplication.shared.keyWindow
        guard let bottom = window?.safeAreaInsets.bottom else {return}
        button.frame = CGRect.init(x: self.tabBar.center.x - 32, y: self.view.bounds.height - (100 + bottom), width: 64, height: 64)
    }
}

extension CustomTabbar:UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
    
    @objc func homeButtonTapped(sender:UIButton){
        self.selectedIndex = 2
    }
    
}
