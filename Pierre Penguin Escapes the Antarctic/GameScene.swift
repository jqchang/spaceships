//
//  GameScene.swift
//  Pierre Penguin Escapes the Antarctic
//
//  Created by Stephen Haney on 7/5/16.
//  Copyright © 2016 JoyfulGames.io. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var playerInstance:SKSpriteNode?
    let playerSpeed:Double = 300
    let cam = SKCameraNode()
    
    override func didMove(to view: SKView) {
        self.anchorPoint = .zero
        self.camera = cam
//        let player = SKSpriteNode(imageNamed:"Spaceship")
        let player = Spaceship()
        playerInstance = player
//        player.size = CGSize(width:50, height:50)
        player.position = CGPoint(x:150, y:150)
        
        let anchor = SKSpriteNode(color: .red, size:CGSize(width:50, height:50))
        anchor.position = CGPoint(x:200, y:200)
        self.addChild(player)
        self.addChild(anchor)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let me = playerInstance {
            if let firsttouch = touches.first {
                let xDist: CGFloat = (firsttouch.location(in: self).x - me.position.x);
                let yDist: CGFloat = (firsttouch.location(in: self).y - me.position.y);
                let distance:Double = Double(hypotf(Float(xDist), Float(yDist)))
                let actionSequence = [SKAction.rotate(toAngle:atan2(yDist, xDist)-CGFloat(M_PI)/2, duration: 0.25, shortestUnitArc: true), SKAction.move(to:firsttouch.location(in: self), duration:distance/playerSpeed)]
                me.run(SKAction.group(actionSequence))
            }
        }
//        for touch in touches {
//            let player = SKSpriteNode(imageNamed:"Spaceship")
//            playerInstance = player
//            player.size = CGSize(width:50, height:50)
//            player.position = touch.location(in: self)
//            self.addChild(player)
//        }
    }
    override func didSimulatePhysics() {
        self.camera!.position = playerInstance!.position
    }
    
}
