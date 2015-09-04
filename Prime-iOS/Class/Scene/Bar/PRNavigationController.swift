//
//  PRNavigationController.swift
//  Prime-iOS
//
//  Created by zhu_haibo on 15/9/3.
//  Copyright (c) 2015年 EasyiOS. All rights reserved.
//

import EasyIOS

class PRNavigationController: EZNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationBar.translucent = true
        navigationBar .setBackgroundImage(UIImage(named: "naviBar_icon"), forBarMetrics: UIBarMetrics.Default)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
