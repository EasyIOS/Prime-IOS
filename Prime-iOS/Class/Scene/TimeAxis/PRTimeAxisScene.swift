//
//  PRTimeAixsScene.swift
//  Prime-iOS
//
//  Created by zhu_haibo on 15/9/3.
//  Copyright (c) 2015年 EasyiOS. All rights reserved.
//

import EasyIOS
import Bond

class PRTimeAxisScene: EUScene, UITableViewDelegate {

    var sceneModel = PRTimeAxisSceneModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "time"
        view.backgroundColor = UIColor.purpleColor()
    }
    
    override func eu_viewWillLoad() {
        
        CODE_KEY = "code"//错误码
        MSG_KEY = "msg" //网络请求的msg信息
        CRTPTO_KEY = "easyios"  //这是自定义的密钥
        
        URLManager.loadConfigFromPlist(NSBundle.mainBundle().pathForResource("url", ofType: "plist"))  // 初始化URLManager
        self.attributedLabelDelegate = PRTimeAxisLabelDelegate()
    }
    
    override func eu_tableViewDidLoad(tableView:UITableView?){
        
        tableView?.delegate = self
        
        //定义一个可以给JS调用的下拉刷新回调方法handlePullRefresh()
        define("handlePullRefresh"){
            let delayTime = dispatch_time(DISPATCH_TIME_NOW,
                Int64(3.0 * Double(NSEC_PER_SEC)))
            dispatch_after(delayTime, dispatch_get_main_queue()) {
                tableView?.pullToRefreshView?.stopAnimating()
            }
        }
        
        let section1 = self.sceneModel.dataArray.map{ (data:NSObject) -> UITableViewCell in
            let cell = tableView!.dequeueReusableCell("cell", target: self,bind:data) as UITableViewCell
            cell.selectionStyle = .None
            return cell
        }
        DynamicArray([section1,section1,section1]) ->> self.eu_tableViewDataSource!
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
