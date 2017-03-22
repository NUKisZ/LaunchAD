//
//  ViewController.swift
//  LaunchAD
//
//  Created by zhangk on 17/1/9.
//  Copyright © 2017年 zhangk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "首页"
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.backgroundColor = UIColor.red
        view.addSubview(btn)
        //let imageUrl = "http://img5q.duitang.com/uploads/item/201505/25/20150525223238_NdQrh.thumb.700_0.png"
        let imageUrl = "http://avatar.csdn.net/8/6/D/1_u011545443.jpg"
        let adUrl = "http://tieba.baidu.com/"
//        LaunchADView.setValue(imgURL: image, webURL: ad, showTime: 15)
//        LaunchADView.show { (url) in
//            let vc = ADViewController()
//            vc.adUrl = url
//            self.navigationController?.pushViewController(vc, animated: true)
//        }
        
        let adView = ADView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), imgadUrl: imageUrl, ad: adUrl) {
            (clikImgUrl) in
            print("进入广告")
            let adVc = ADViewController()
            adVc.adUrl = clikImgUrl
            self.navigationController?.pushViewController(adVc, animated: true)
        }
        adView.showTime = 15
        adView.show()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

