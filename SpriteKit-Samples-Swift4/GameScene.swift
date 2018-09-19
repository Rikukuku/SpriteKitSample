//
//  GameScene.swift
//  SpriteKit-Samples-Swift4
//
//  Created by Nakahara Riku on 2018/09/19.
//  Copyright © 2018年 Nakahara Riku. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    
  
    var selectNumber: Int!
    var width:CGFloat!
    var height:CGFloat!
    
    init(size:CGSize, selectNumber:Int) {
        super.init(size: size)
        self.selectNumber = selectNumber
        self.width = size.width
        self.height = size.height
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        switch selectNumber {
        case 11:
            
            let position:CGPoint = CGPoint(x:self.width/2,y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            let rect = SKSpriteNode(color:.yellow,
                                    size:CGSize(width: 150, height: 150))
            rect.position = position
            addChild(backgroudShape)
            addChild(rect)
            
        case 12:
            
            let position = CGPoint(x:self.width/2,y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .yellow, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            let rect = SKShapeNode(rectOf: CGSize(width: 120, height: 120))
            rect.fillColor = .red
            rect.position = position
            addChild(rect)
            for i in stride(from: 0.0, to: 90.0, by: 15.0) {
                let rect_rolling = SKShapeNode(rectOf: CGSize(width: 200, height: 200))
                rect_rolling.strokeColor = .blue
                rect_rolling.lineWidth = 3
                rect_rolling.position = position
                rect_rolling.zRotation = CGFloat(i * .pi/180.0)
                addChild(rect_rolling)
            }
        default:
            print("fatal error")
        }
        
    }


}
