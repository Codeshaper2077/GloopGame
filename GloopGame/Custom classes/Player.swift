//
//  Player.swift
//  GloopGame
//
//  Created by IvanN on 15.08.2023.
//

import Foundation
import SpriteKit

enum PlayerAnimationType: String {
    case walk
}

class Player: SKSpriteNode {
    //MARK: - Properties
    private var walkTextures: [SKTexture]?
    //MARK: - INIT
    init() {
        // default texture
        let texture = SKTexture(imageNamed: "blob-walk_0")
        // call to super.init
        super.init(texture: texture, color: .clear, size: texture.size())
        // set animation textures
        self.walkTextures = self.loadTextures(atlas: "blob", prefix: "blob-walk_", startAt: 0, stopAt: 2)
        
        // set other prop after init
        self.name = "player"
        self.setScale(1.0)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
