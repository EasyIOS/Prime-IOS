//
//  PRTimeAxisLabelDelegate.swift
//  Prime-iOS
//
//  Created by zhu_haibo on 15/9/4.
//  Copyright (c) 2015年 EasyiOS. All rights reserved.
//

import EasyIOS
import TTTAttributedLabel

class PRTimeAxisLabelDelegate: TTTAttributedLabelDelegateHandle {
    func attributedLabel(label: TTTAttributedLabel!, didSelectLinkWithURL url: NSURL!) {
        URLManager.pushURL(url, animated: true)
    }
}
