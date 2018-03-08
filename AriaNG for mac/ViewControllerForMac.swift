//
//  ViewController.swift
//  AriaNG for mac
//
//  Created by Vinken Chan on 1/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import Cocoa
import WebKit

class ViewControllerForMac: NSViewController, WKUIDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()

    let theWebView = WKWebView(frame: .zero)
    theWebView.uiDelegate = self
    view.addSubview(theWebView)

    // 不自动转换为constrains，设置成false后下面的约束才能生效
    theWebView.translatesAutoresizingMaskIntoConstraints = false
    // 设置界面约束
    Utils.setConstraint(subView: theWebView, superView: theWebView.superview!)

    // 加载页面内容
    Utils.loadContent(webView: theWebView)

  }
  
}


