//
//  ADViewController.swift
//  LaunchAD
//
//  Created by zhangk on 17/1/9.
//  Copyright © 2017年 zhangk. All rights reserved.
//

import UIKit
import WebKit

class ADViewController: UIViewController {
    var adUrl:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "广告页面"
        print("广告页面")
        let wkWebView = WKWebView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        wkWebView.backgroundColor = UIColor.white
        let request = URLRequest.init(url: URL(string: adUrl!)!)
        wkWebView.load(request)
        view.addSubview(wkWebView)
    }

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
