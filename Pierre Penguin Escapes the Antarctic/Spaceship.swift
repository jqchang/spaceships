//
//  Spaceship.swift
//  pierre penguin escapes the antarctic
//
//  Created by Justin Chang on 3/10/17.
//  Copyright © 2017 JoyfulGames.io. All rights reserved.
//

import SpriteKit

class Spaceship: SKSpriteNode, GameSprite {
    var initialSize:CGSize = CGSize(width:50, height:50)
//    var baseImage:SKSpriteNode = SKSpriteNode(imageNamed:"Spaceship")
    
    func onTap() {
        print("Spaceship.onTap()")
    }
    init() {
        super.init(texture: SKTexture(imageNamed:"Spaceship"), color: .clear, size: initialSize)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
