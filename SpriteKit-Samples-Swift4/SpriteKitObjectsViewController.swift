//
//  SpriteKitObjectsViewController.swift
//  SpriteKit-Samples-Swift4
//
//  Created by Nakahara Riku on 2018/09/19.
//  Copyright © 2018年 Nakahara Riku. All rights reserved.
//

import UIKit
import SpriteKit

class SpriteKitObjectsViewController: UIViewController {
    
    let fromAppDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    var selectNumber :Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let skView = SKView(frame: CGRect(x:0, y:0, width:fromAppDelegate.width, height:fromAppDelegate.height))
        view.addSubview(skView)
        print(selectNumber)
        let skScene = GameScene(size: skView.frame.size,selectNumber:self.selectNumber)
        skScene.scaleMode = .resizeFill
        skView.ignoresSiblingOrder = true
        skView.presentScene(skScene)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
