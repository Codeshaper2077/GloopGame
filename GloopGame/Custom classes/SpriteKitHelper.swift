//
//  SpriteKitHelper.swift
//  GloopGame
//
//  Created by IvanN on 15.08.2023.
//

import Foundation
import SpriteKit

// z-pos
enum Layer: CGFloat {
    case background
    case foreground
    case player
}

extension SKSpriteNode {
    //used to load texture arrays for animations
    func loadTextures(atlas: String, prefix: String, startAt: Int, stopAt: Int) -> [SKTexture] {
        var arrayTexture = [SKTexture]()
        for i in startAt...stopAt {
            let textureName = "\(prefix)\(i)"
            let texture = SKTexture(imageNamed: textureName)
            arrayTexture.append(texture)
        }
        return arrayTexture
    }
    
    func startAnimation(textures: [SKTexture], speed: Double, resize: Bool, restore: Bool, name: String, count: Int) {
        if (action(forKey: name) == nil) {
            let animation = SKAction.animate(with: textures, timePerFrame: speed, resize: resize, restore: restore)
            if count == 0 {
                let repeatAction = SKAction.repeatForever(animation)
                run(repeatAction, withKey: name)
            } else if count == 1 {
                run(animation, withKey: name)
            } else {
                let repeatAction = SKAction.repeat(animation, count: count)
                run(repeatAction, withKey: name)
            }
        }
    }
    
}
