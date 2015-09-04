//
//  ViewController.swift
//  Prime-iOS
//
//  Created by zhu_haibo on 15/8/19.
//  Copyright (c) 2015年 EasyiOS. All rights reserved.
//


import EasyIOS
import FoldingTabBar.YALAnimatingTabBarConstants

class RootViewController: UIViewController {

    var timeNav:PRNavigationController!
    var messageNav:PRNavigationController!
    var personNav:PRNavigationController!
    var eventNav:PRNavigationController!
    
    var tabbarController:PRTabBarController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupViewController()
    }

    func setupViewController() {
        timeNav = PRNavigationController(rootViewController: PRTimeAxisScene())
        messageNav = PRNavigationController(rootViewController: PRMessageScene())
        personNav = PRNavigationController(rootViewController: PRPersonalScene())
        eventNav = PRNavigationController(rootViewController: PREventScene())
        
        tabbarController = PRTabBarController()
        
        //prepare leftBarItems
        var item1:PRTabBarIterm = PRTabBarIterm(itemImage:UIImage(named: "nearby_icon"), leftItemImage:UIImage(named: "search_icon"), rightItemImage:UIImage(named: "new_chat_icon"))
        
        var item2:PRTabBarIterm = PRTabBarIterm(itemImage:UIImage(named: "profile_icon"), leftItemImage:UIImage(named: "1"), rightItemImage:UIImage(named: "1"))
        
        tabbarController.leftBarItems = [item1, item2]
        
        
        //prepare rightBarItems
        var item3:PRTabBarIterm = PRTabBarIterm(itemImage:UIImage(named: "chats_icon"), leftItemImage:UIImage(named: "1"), rightItemImage:UIImage(named: "1"))
        
        var item4:PRTabBarIterm = PRTabBarIterm(itemImage:UIImage(named: "settings_icon"), leftItemImage:UIImage(named: "edit_icon"), rightItemImage:UIImage(named: "1"))
        
        tabbarController.rightBarItems = [item3, item4]
        tabbarController.centerButtonImage = UIImage(named: "plus_icon")
        
        
        //customize tabBarView
        tabbarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight
        
        tabbarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
        tabbarController.tabBarView.backgroundColor = UIColor.clearColor();
        tabbarController.tabBarView.tabBarColor = UIColor(hexString: "#34cdff")
        tabbarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
        tabbarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
        tabbarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
        
        tabbarController.viewControllers = [timeNav, messageNav, eventNav, personNav]
        tabbarController.selectedIndex = 0;
        view.addSubview(tabbarController.view)
        LIVE_LOAD_PATH = __FILE__.stringByDeletingLastPathComponent.stringByAppendingString("/Class/Scene/Xml")  //xml文件的路径（项目路径）
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

