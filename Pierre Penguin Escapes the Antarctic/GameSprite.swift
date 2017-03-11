//
//  GameSprite.swift
//  pierre penguin escapes the antarctic
//
//  Created by Justin Chang on 3/10/17.
//  Copyright © 2017 JoyfulGames.io. All rights reserved.
//

import SpriteKit

protocol GameSprite {
//    var baseImage:SKSpriteNode {get set}
    var initialSize: CGSize { get set }
    func onTap()
}
