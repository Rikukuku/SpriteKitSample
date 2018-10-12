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
    var base_circle = SKShapeNode()
    var hoak = SKLabelNode(text: "🦅")
    var circle23 = SKShapeNode(circleOfRadius: 50)
    let moai24 = SKLabelNode(text: "🗿")
    var scale:CGFloat = 1.0
    let image25 = SKSpriteNode(imageNamed: "sample1.png")
    let shape26 = SKShapeNode(rectOf: CGSize(width: 200, height: 200) , cornerRadius: 50)
    let image27 = SKSpriteNode(imageNamed: "sample2.jpeg")
    let image27_2 = SKSpriteNode(imageNamed: "sample2.jpeg")
    var shapes = [SKShapeNode](repeating: SKShapeNode(), count: 45)
    let circle34 = SKShapeNode(circleOfRadius: 50)
    let circle35 = SKShapeNode(circleOfRadius: 50)
    let soccer36 = SKLabelNode(text: "⚽️")
    let soccer37 = SKShapeNode(circleOfRadius: 50)
    let soccer38 = SKShapeNode(circleOfRadius: 20)
    let rect39 = SKShapeNode(rectOf: CGSize(width: 15, height: 50))
    let circle310 = SKShapeNode(circleOfRadius: 40)
    let circle311 = SKShapeNode(circleOfRadius: 40)
    let circle312 = SKShapeNode(circleOfRadius: 40)
    var slider :UISlider!
    
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
         //四角形の表示
        case 11:
            let position:CGPoint = CGPoint(x:self.width/2,y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            let rect = SKSpriteNode(color:.yellow,
                                    size:CGSize(width: 150, height: 150))
            rect.position = position
            addChild(backgroudShape)
            addChild(rect)
        //四角形回転の描画
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
        //画像の表示
        case 13:
            let position = CGPoint(x:self.width/2,y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .yellow, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            
            let backRect = SKShapeNode(rectOf: CGSize(width: 250, height: 250))
            backRect.fillColor = .green
            backRect.position = position
            addChild(backRect)
            
            let imageShape = SKSpriteNode(imageNamed: "sample1.png")
            imageShape.size = CGSize(width: 200, height: 200)
            imageShape.position = position
            addChild(imageShape)
        //テキストの表示
        case 14:
            
             let position = CGPoint(x:self.width/2,y:self.height/2)
            let text = SKLabelNode(text: "Swift4 iPhoneX")
            text.fontSize = 50
            text.fontColor = .yellow
            text.position = position
            addChild(text)
        //絵文字を表示する
        case 15:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .yellow, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            let illustLabel = SKLabelNode(text:" 👺")
            illustLabel.fontSize = 200
            illustLabel.position = position
            addChild(illustLabel)
        //円を描く
        case 16:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .white, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            
            let circle = SKShapeNode(circleOfRadius: 105)
            circle.position = CGPoint(x: frame.midX, y: frame.midY + 5)
            circle.fillColor = .red
            addChild(circle)
            var radius = 0
            for i in 0..<15 {
                radius += i
                let circle2 = SKShapeNode(circleOfRadius: CGFloat(radius))
                circle2.strokeColor = .blue
                circle2.lineWidth = 2
                circle2.position = CGPoint(x: frame.midX, y: frame.midY + CGFloat(radius-100))
                addChild(circle2)
            }
            //角が丸い正方形
        case 17:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            let x0 = Int(frame.midX) - 100
            let y0 = Int(frame.midY) - 100
            let shape = SKShapeNode(rect: CGRect(x: x0, y: y0, width: 200, height: 200), cornerRadius: 30)
            shape.fillColor = .yellow
            addChild(shape)
            for i in stride(from: 3, to: 25, by: 3){
                let cornerRect = SKShapeNode(rect: CGRect(x: x0 - i, y: y0 - i, width: 200 + 2*i, height:200 + 2*i), cornerRadius: 30)
                cornerRect.strokeColor = .cyan
                cornerRect.lineWidth = 2
                addChild(cornerRect)
            }
            let text = SKLabelNode(text: "Swift4 iPhoneX")
            text.fontSize = 25
            text.fontColor = .blue
            text.position = CGPoint(x:frame.midX, y : frame.midY)
            addChild(text)
        case 18:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            let x0 = Int(frame.midX) - 150
            let y0 = Int(frame.midY) - 75
            let ellipse = SKShapeNode(ellipseIn: CGRect(x: x0, y: y0, width: 300, height: 150))
            ellipse.fillColor = .yellow
            addChild(ellipse)
            for i in stride(from: 0, to: 80, by: 10) {
                let ellipse2 = SKShapeNode(ellipseOf: CGSize(width: 300, height: 150 - i))
                ellipse2.position = CGPoint(x:frame.midX, y:frame.midY)
                ellipse2.strokeColor = .black
                addChild(ellipse2)
            }
            let text = SKLabelNode(text: "Swift4 iPhone")
            text.fontSize = 30
            text.fontColor = .blue
            text.position = CGPoint(x: frame.midX, y: frame.midY - 10)
            addChild(text)
        case 19:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .yellow, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            
            var points = [ CGPoint(x:20, y:200),CGPoint(x:200, y:560),CGPoint(x:220, y:200),CGPoint(x:300, y:300),CGPoint(x:360, y:100)]
            let line = SKShapeNode(points: &points, count: points.count)
            line.strokeColor = .blue
            line.lineWidth = 4.0
            addChild(line)
            
            let spline = SKShapeNode(splinePoints: &points, count: points.count)
            spline.strokeColor = .red
            spline.lineWidth = 6.0
            addChild(spline)
        case 21:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .yellow, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            base_circle = SKShapeNode(ellipseOf: CGSize(width: 100, height: 50))
            base_circle.position = position
            base_circle.fillColor = .blue
            addChild(base_circle)
        case 22:
            let backgroundImage = SKSpriteNode(imageNamed: "mount.jpeg")
            backgroundImage.size = CGSize(width: frame.width, height: frame.height)
            backgroundImage.position = CGPoint(x:frame.midX, y:frame.midY)
            addChild(backgroundImage)
            hoak.fontSize = 50
            hoak.position = CGPoint(x:self.width/2, y:self.height/2 + 130)
            addChild(hoak)
        case 23:
            circle23.position = CGPoint(x:self.width/2, y:self.height/2)
            circle23.fillColor = .red
            addChild(circle23)
        case 24:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .green, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            moai24.fontSize = 150
            moai24.position = CGPoint(x: frame.midX, y: frame.midY)
            addChild(moai24)
        case 25:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            image25.position = position
            addChild(image25)
        case 26:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            shape26.fillColor = .yellow
            shape26.position = position
            addChild(shape26)
        case 27:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .green, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            image27.position = position
            addChild(image27)
            let effect = SKEffectNode()
            effect.filter = CIFilter(name: "CIPixellate")
            effect.addChild(image27_2)
            image27_2.position = CGPoint(x:frame.midX, y: frame.midY)
            addChild(effect)
        case 28:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
             var number = 0
            for i in stride(from: 100.0, to: 1000.0, by: 20.0) {
                let radius = 30.0 * exp(i * .pi / 1800.0)
                let diameter = radius / 10.0
                let x = Double(frame.midX) + radius * cos(i * .pi / 180.0)
                let y = Double(frame.midY) + radius * sin(i * .pi / 180.0)
                shapes[number] = SKShapeNode(rect: CGRect(x: x - diameter, y: y - diameter, width: 2 * diameter, height: 2 * diameter))
                shapes[number].fillColor = .yellow
                addChild(shapes[number])
                number += 1
            }
        case 31:
            
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -1.0)
            let circle = SKShapeNode(circleOfRadius: 50)
            circle.fillTexture = SKTexture(imageNamed: "sample2.jpeg")
            circle.position = position
            circle.fillColor = .white
            circle.strokeColor = .blue
            circle.physicsBody = SKPhysicsBody(circleOfRadius: circle.frame.width / 2)
            circle.physicsBody?.isDynamic = true
            circle.physicsBody?.linearDamping = 0.1
            circle.physicsBody?.restitution = 0.8
            addChild(circle)
            

        case 32:
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.1, dy: -1.0)
            let socerball = SKShapeNode(circleOfRadius: 30)
            socerball.fillTexture = SKTexture(imageNamed: "socer.png")
            socerball.position = CGPoint(x:20 , y:self.height - 20)
            socerball.fillColor = .white
            socerball.strokeColor = .blue
            socerball.physicsBody = SKPhysicsBody(circleOfRadius: socerball.frame.width / 2)
            socerball.physicsBody?.isDynamic = true
            socerball.physicsBody?.restitution = 0.8
            addChild(socerball)
        case 33:
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.5)
            let position = CGPoint(x:self.width/2, y:self.height/2)
            let backgroudShape = SKSpriteNode(color: .blue, size: CGSize(width: self.width, height: self.height))
            backgroudShape.position = position
            addChild(backgroudShape)
            
            let circle1 = SKShapeNode(circleOfRadius: 50)
            circle1.position = CGPoint(x:self.width/2, y: self.height - 100)
            circle1.fillColor = .yellow
            circle1.strokeColor = circle1.fillColor
            circle1.physicsBody = SKPhysicsBody(circleOfRadius: circle1.frame.width/2)
            circle1.physicsBody?.isDynamic = true
            circle1.physicsBody?.restitution = 0.75
            addChild(circle1)
            let circle2 = SKShapeNode(circleOfRadius: 50)
            circle2.position = CGPoint(x: self.width/2 + 10, y: self.height/3)
            circle2.fillColor = .red
            circle2.strokeColor = .red
            circle2.physicsBody = SKPhysicsBody(circleOfRadius: circle2.frame.width/2)
            circle2.physicsBody?.isDynamic = false
            circle2.physicsBody?.affectedByGravity = true
            addChild(circle2)
            //ここから謎のリファクタリング
        case 34:
            let bg = makebackgroudShape(color: .blue, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.2)
            circle34.position = CGPoint(x:self.width/2, y: self.height - 50)
            circle34.fillColor = .yellow
            circle34.strokeColor = .yellow
            circle34.physicsBody = SKPhysicsBody(circleOfRadius: circle34.frame.width/2)
            circle34.physicsBody?.isDynamic = true
            circle34.physicsBody?.restitution = 0.75
            addChild(circle34)
            let circle2 = makeCircle(radius: 50, position_x: self.width/2, position_y: self.height/3, color: .red)
            circle2.strokeColor = .red
            circle2.physicsBody = SKPhysicsBody(circleOfRadius: circle2.frame.width/2)
            circle2.physicsBody?.isDynamic = false
            circle2.physicsBody?.affectedByGravity = false
            addChild(circle2)
        case 35:
            let bg = makebackgroudShape(color: .blue, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.2)
            circle35.position = CGPoint(x:self.width/2, y: self.height - 50)
            circle35.fillColor = .yellow
            circle35.strokeColor = .yellow
            circle35.physicsBody = SKPhysicsBody(circleOfRadius: circle34.frame.width/2)
            circle35.physicsBody?.isDynamic = true
            
            addChild(circle35)
            let circle2 = makeCircle(radius: 50, position_x: self.width/2, position_y: self.height/3, color: .red)
            circle2.strokeColor = .red
            circle2.physicsBody = SKPhysicsBody(circleOfRadius: circle2.frame.width/2)
            circle2.physicsBody?.isDynamic = true
            circle2.physicsBody?.affectedByGravity = false
            circle2.physicsBody?.restitution = 0.75
            addChild(circle2)
        case 36:
            let bg = makebackgroudShape(color: .green, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.2)
            soccer36.fontSize = 50
            soccer36.position = CGPoint(x: frame.midX, y: CGFloat(self.height - 100))
            soccer36.physicsBody = SKPhysicsBody(circleOfRadius: soccer36.frame.width / 2)
            soccer36.physicsBody?.isDynamic = true
            soccer36.physicsBody?.restitution = 0.8
            addChild(soccer36)
            
            let goal = SKLabelNode(text: "🥅")
            goal.fontSize = 150
            goal.position = CGPoint(x: frame.midX, y: CGFloat(self.height - 120))
            goal.physicsBody = SKPhysicsBody(circleOfRadius: 1)
            goal.physicsBody?.isDynamic = false
            addChild(goal)
        case 37:
            let bg = makebackgroudShape(color: .blue, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
            soccer37.position = CGPoint(x: self.width / 2 , y: self.height - 50)
            soccer37.fillColor = .white
            soccer37.strokeColor = .white
            soccer37.fillTexture = SKTexture(imageNamed: "socer.png")
            soccer37.physicsBody = SKPhysicsBody(circleOfRadius: soccer37.frame.width / 2)
            soccer37.physicsBody?.isDynamic = true
            addChild(soccer37)
            
            let circle2 = makeCircle(radius: 50, position_x: self.width/2, position_y: self.height/3, color: .red)
            circle2.strokeColor = .red
            circle2.physicsBody = SKPhysicsBody(circleOfRadius: circle2.frame.width/2)
            circle2.physicsBody?.isDynamic = true
            circle2.physicsBody?.restitution = 0.75
            addChild(circle2)
        case 38:
            let bg = makebackgroudShape(color: .blue, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.5)
            soccer38.position = CGPoint(x: self.width / 2, y: self.height - 50)
            soccer38.fillColor = .white
            soccer38.fillTexture = SKTexture(imageNamed: "socer.png" )
            soccer38.physicsBody = SKPhysicsBody(circleOfRadius: soccer38.frame.width / 2)
            soccer38.physicsBody?.isDynamic = true
            soccer38.physicsBody?.restitution = 0.75
            addChild(soccer38)
            
            for _ in 0..<15 {
                let pinball = SKShapeNode(circleOfRadius: 7)
                pinball.position = CGPoint(x: Double(50 + arc4random_uniform(UInt32(self.width - 100))),
                                           y: Double(50 + arc4random_uniform(UInt32(self.width - 100))))
                pinball.fillColor = .white
                pinball.strokeColor = .white
                
                pinball.physicsBody = SKPhysicsBody(circleOfRadius: pinball.frame.width / 2)
                pinball.physicsBody?.isDynamic = false
                pinball.physicsBody?.restitution = 1.0
                addChild(pinball)
                
            }
        case 39:
            let bg = makebackgroudShape(color: .yellow, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.5)
            let rect2 = SKShapeNode(rectOf: CGSize(width: 50, height: 15))
            rect2.fillColor = .black
            rect2.strokeColor = .black
            rect39.addChild(rect2)
            rect39.position = CGPoint(x: self.width / 2 , y: self.height - 50)
            rect39.fillColor = .black
            rect39.strokeColor = .black
            rect39.physicsBody = SKPhysicsBody(bodies: [SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 15)),
                                                        SKPhysicsBody(rectangleOf: CGSize(width: 15, height: 50))])
            rect39.physicsBody?.restitution = 0.5
            addChild(rect39)
        case 310:
            let bg = makebackgroudShape(color: .black, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.3)
            circle310.position = CGPoint(x:self.width / 2, y: self.height / 2)
            circle310.fillColor = .red
            circle310.strokeColor = .red
            circle310.physicsBody = SKPhysicsBody(circleOfRadius: circle310.frame.width / 2)
            circle310.physicsBody?.restitution = 1.0
            addChild(circle310)
            for _ in 0..<50 {
                let pinball = SKShapeNode(circleOfRadius: 20)
                pinball.position = CGPoint(x: Double(arc4random_uniform(UInt32(self.width))),
                                           y: Double(arc4random_uniform(UInt32(self.height))))
                pinball.fillColor = .yellow
                pinball.strokeColor = .yellow
                
                pinball.physicsBody = SKPhysicsBody(circleOfRadius: pinball.frame.width / 2)
                pinball.physicsBody?.isDynamic = true
                pinball.physicsBody?.restitution = 1.0
                addChild(pinball)
            }
        case 311:
            let bg = makebackgroudShape(color: .black, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.3)
            circle311.position = CGPoint(x:self.width / 2 ,y: self.height / 2)
            circle311.fillColor = .black
            circle311.strokeColor = .black
            circle311.physicsBody = SKPhysicsBody(circleOfRadius: circle311.frame.width / 2)
            circle311.physicsBody?.isDynamic = true
            circle311.physicsBody?.restitution = 1.0
            addChild(circle311)
            
            var points = [CGPoint(x:0,y:0),CGPoint(x:100,y:200),CGPoint(x:200,y:150),CGPoint(x:300,y:170),CGPoint(x:self.width,y:0)]
            let spline = SKShapeNode(splinePoints: &points, count: points.count)
            spline.strokeColor = .red
            spline.lineWidth = 6.0
            spline.physicsBody = SKPhysicsBody(edgeChainFrom: spline.path!)
            spline.physicsBody?.isDynamic = false
            addChild(spline)
            for _ in 0..<10 {
                addChild(makeBall(radius: 15))
            }
        case 312:
            let bg = makebackgroudShape(color: .white, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.3)
            
            circle312.position = CGPoint(x:self.width / 2 ,y: self.height / 2)
            circle312.fillColor = .red
            circle312.strokeColor = .red
            circle312.physicsBody = SKPhysicsBody(circleOfRadius: circle312.frame.width / 2)
            circle312.physicsBody?.isDynamic = true
            circle312.physicsBody?.restitution = 1.0
            addChild(circle312)
            
            slider = UISlider(frame: CGRect(x: 50, y: self.height - 40, width: 300, height: 24))
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 1
            slider.isContinuous = false
            view.addSubview(slider)
        case 313:
            let bg = makebackgroudShape(color: .black, width: self.width, height: self.height, position_x: self.width/2, position_y: self.height/2)
            addChild(bg)
            physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
            physicsWorld.gravity = CGVector(dx: 0.0, dy: -0.3)
            
            let xrosRect = SKShapeNode(rect: CGRect(x: self.width / 2, y:0, width: 80, height: 30))
            xrosRect.fillColor = .green
            xrosRect.strokeColor = .green
            addChild(xrosRect)
            let cg = SKShapeNode(rect: CGRect(x: self.width/2 - 15, y: 0, width: 30, height: 50))
            cg.fillColor = .green
            cg.strokeColor = .green
            addChild(cg)
            for _ in 0..<10 {
                addChild(makeBall(radius: 20))
            }
        
         default:
            print("fatal error")
        
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        switch selectNumber {
        case 21:
            base_circle.yScale -= 0.1
            base_circle.xScale -= 0.1
        case 22:
            if hoak.fontSize < 200 {
                hoak.fontSize += 10
            }
        case 23:
            let touch = touches.first!
            circle23.position = touch.location(in: self)
        case 24:
            let touch = touches.first!
            moai24.position = touch.location(in: self)
        case 25:
            scale += 0.1
            image25.setScale(scale)
        case 26:
            shape26.isHidden = !shape26.isHidden
        case 27:
            let touch = touches.first!
            image27.position = touch.location(in: self)
        case 28:
            physicsWorld.gravity = CGVector(dx: 0.0, dy:  -0.8)
            for n in 0..<45 {
                shapes[n].physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 2, height: 2))
                shapes[n].physicsBody?.linearDamping = CGFloat(Double(n) / 5.0)
            }
        case 34:
            circle34.physicsBody?.applyImpulse(CGVector(dx: Double(arc4random_uniform(200)) - 100.0,
                                                        dy: Double(arc4random_uniform(200)) - 100.0 ))
        case 35:
            circle35.physicsBody?.applyImpulse(CGVector(dx: Double(arc4random_uniform(200)) - 100.0,
                                                        dy: Double(arc4random_uniform(200)) - 100.0))
        case 36:
            soccer36.physicsBody?.applyImpulse(CGVector(dx: Double(arc4random_uniform(400)) - 200.0,
                                                        dy: Double(arc4random_uniform(400)) - 200.0))
        case 37:
            let touch = touches.first!
            let t = touch.location(in: self)
            let ad = t.x - soccer37.position.x
            let op = t.y - soccer37.position.y
            soccer37.physicsBody?.applyImpulse(CGVector(dx: ad/5.0, dy: op/5.0))
        case 38:
            soccer38.physicsBody?.applyImpulse(CGVector(dx: 60.0, dy: 60.0
            ))
        case 39:
            let touch = touches.first!
            let pinhall = SKShapeNode(circleOfRadius: 5)
            pinhall.position = touch.location(in: self)
            pinhall.fillColor = .red
            pinhall.strokeColor = .red
            pinhall.physicsBody = SKPhysicsBody(circleOfRadius: pinhall.frame.width / 2)
            pinhall.physicsBody?.isDynamic = false
            pinhall.physicsBody?.restitution = 1.0
            addChild(pinhall)
        case 310:
            circle310.physicsBody?.applyImpulse(CGVector(dx: Double(arc4random_uniform(400)) - 200.0,
                                                         dy: Double(arc4random_uniform(400)) - 200.0))
        case 311:
            addChild(makeBall(radius: 15))
            circle311.physicsBody?.applyImpulse(CGVector(dx: Double(arc4random_uniform(400)) - 200.0, dy: Double(arc4random_uniform(400)) - 200.0))
        case 312:
            let ball = makeBall(radius: 10)
            ball.physicsBody?.linearDamping = CGFloat(slider.value / 10)
            addChild(ball)
            circle312.physicsBody?.applyImpulse(CGVector(dx: Double(arc4random_uniform(400)) - 200.0, dy: Double(arc4random_uniform(400)) - 200.0))
        case 313:
            let gun = makeBomb(radius: 10)
            addChild(gun)
            gun.physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: 100.0))
            default:
            print("未実装")
        }

        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        switch selectNumber {
        case 21:
            base_circle.yScale += 0.01
            base_circle.xScale += 0.01
        case 22:
            if hoak.fontSize > 10 {
                hoak.fontSize -= 5
            }
        case 24:
            let touch = touches.first!
            moai24.position = touch.location(in: self)
        case 25:
            scale -= 0.1
            image25.setScale(scale)
        case 27:
            let touch = touches.first!
            image27_2.position = touch.location(in: self)
        case 39:
            rect39.physicsBody?.applyImpulse(CGVector(dx: 200.0, dy: 200.0))
        default:
            print("未実装")
        }

    }
    
    func makeCircle(radius: CGFloat, position_x :CGFloat, position_y: CGFloat, color: UIColor) -> SKShapeNode {
        let circle = SKShapeNode(circleOfRadius: radius)
        circle.position = CGPoint(x: position_x, y: position_y)
        circle.fillColor = color
        return circle
    }
    
    func makebackgroudShape(color:UIColor, width:CGFloat,height:CGFloat, position_x:CGFloat, position_y:CGFloat) -> SKSpriteNode{
        let backgroundShape = SKSpriteNode(color: color, size: CGSize(width: width, height: height))
        backgroundShape.position = CGPoint(x:position_x, y:position_y)
        return backgroundShape
    }
    func makeBall(radius: CGFloat = 20) -> SKShapeNode{
        let ball = SKShapeNode(circleOfRadius: radius)
        ball.position = CGPoint(x: Double(arc4random_uniform(UInt32(self.width))),
                                y:200.0 + Double(arc4random_uniform(UInt32(self.height - 200))))
        ball.fillColor = UIColor(hue: CGFloat(arc4random_uniform(1000)) / CGFloat(1000), saturation: 1.0, brightness: 1.0, alpha: 1.0)
        ball.strokeColor = ball.fillColor
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.frame.width / 2)
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.restitution = 1.0
        return ball
        
    }
    func makeBomb(radius: CGFloat) -> SKShapeNode{
        let bomb = SKShapeNode(circleOfRadius: radius)
        bomb.position = CGPoint(x: self.width / 2, y: 20)
        bomb.fillColor = .red
        bomb.strokeColor = .red
        bomb.physicsBody = SKPhysicsBody(circleOfRadius: bomb.frame.width / 2)
        bomb.physicsBody?.linearDamping = 10.0
        bomb.physicsBody?.restitution = 1.0
        return bomb
    }
    
}
