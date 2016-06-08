//
//  ViewController.swift
//  ExtensionDemo
//
//  Created by 赵晓东 on 16/6/1.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        "王鹤".printSelf ()
        
        let intValue:Int = 1
        intValue.FloatValue
        print(intValue)
        intValue.DoubleValue
        print(intValue)
        intValue.StringValue
        print(intValue)

        
        
        self.imageView.image = UIImage(named: "3.jpg")?.blurImage(10.0)
    }
    
    override func viewDidAppear(animated: Bool) {
        self.imageView.movetoXwithDuration(0, duration: 1)
        
        self.imageView.movetoYwithDuration(0, duration: 2)
        
        self.imageView.movetoPwithDuration(CGPoint(x: WIDTH/2, y: HEIGHT/2), duration: 3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

