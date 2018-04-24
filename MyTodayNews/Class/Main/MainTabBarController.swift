//
//  MainTabBarController.swift
//  MyTodayNews
//
//  Created by hzb on 2018/4/24.
//  Copyright © 2018年 Lumen. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildViewControllers();
    }

    public func addChildViewControllers(){
        setChildViewController(childController: UIViewController(), title: "1", imageName: "home")
        setChildViewController(childController: UIViewController(), title: "2", imageName: "video")
        setChildViewController(childController: UIViewController(), title: "", imageName: "redpackage")
        setChildViewController(childController: UIViewController(), title: "3", imageName: "weitoutiao")
        setChildViewController(childController: UIViewController(), title: "4", imageName: "huoshan")
    }

    public func setChildViewController(childController:UIViewController ,title:String ,imageName:String){
        childController.title = title;
        childController.tabBarItem.image = UIImage(named: imageName + "_tabbar_32x32_")
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_tabbar_press_32x32_")
        addChildViewController(MainNavigationController(rootViewController: childController));
    }
    
}
