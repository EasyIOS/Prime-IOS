//
//  PRTimeAxisSceneModel.swift
//  Prime-iOS
//
//  Created by zhu_haibo on 15/9/4.
//  Copyright (c) 2015年 EasyiOS. All rights reserved.
//

import EasyIOS
import Bond

class MainCellViewModel: EZViewModel {
    var title:String?
    var subTitle:NSData?
    var srcUrl:NSURL?
    var link:String?
    init(title:String,subTitle:String = "",srcUrl:String = "",link:String = ""){
        self.title = title
        if let data = subTitle.toData() {
            self.subTitle = data
        }
        self.srcUrl = NSURL(string: srcUrl)
        self.link = link
    }
}


class MainSectionViewModel: EZViewModel {
    var title:String?
    init(title:String){
        self.title = title
    }
}

class PRTimeAxisSceneModel: EZSceneModel {
   
    var dataArray =  DynamicArray<MainCellViewModel>(Array<MainCellViewModel>())
    var sectionArray = DynamicArray<MainSectionViewModel>(Array<MainSectionViewModel>())
    override init (){
        super.init()
        
        self.dataArray.append(MainCellViewModel(
            title: "一个简单的登陆页面",
            subTitle: "UIScrollView的使用Demo",
            srcUrl: "http://d.hiphotos.baidu.com/zhidao/pic/item/562c11dfa9ec8a13e028c4c0f603918fa0ecc0e4.jpg",
            link:"demo://login"))
        self.dataArray.append(MainCellViewModel(
            title: "还是登陆界面不过是加密版本",
            subTitle: "UIScrollView的使用Demo",
            srcUrl: "http://d.hiphotos.baidu.com/zhidao/pic/item/562c11dfa9ec8a13e028c4c0f603918fa0ecc0e4.jpg",
            link:"demo://encodelogin"))
        
        self.dataArray.append(MainCellViewModel(
            title: "Collection+网络请求+下拉控件",
            subTitle: "UICollectionView的使用Demo,包含了网络请求",
            srcUrl: "http://d.hiphotos.baidu.com/zhidao/pic/item/562c11dfa9ec8a13e028c4c0f603918fa0ecc0e4.jpg",
            link:"demo://collection"))
        self.dataArray.append(MainCellViewModel(
            title: "HTML版的Label,采用TTTAttributeLabel",
            subTitle: "<p>Hello <a href='demo://login'>World!</a></p>",
            srcUrl: "http://d.hiphotos.baidu.com/zhidao/pic/item/562c11dfa9ec8a13e028c4c0f603918fa0ecc0e4.jpg",
            link:"demo://LabelScene"))
        self.sectionArray.append(MainSectionViewModel(
            title: "section 1"))
        self.sectionArray.append(MainSectionViewModel(
            title: "section 2"))
        self.sectionArray.append(MainSectionViewModel(
            title: "section 3"))
    }
}
