//
//  SpriteKitHelper.swift
//  GloopGame
//
//  Created by IvanN on 15.08.2023.
//

import Foundation
import SpriteKit

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
    
}
