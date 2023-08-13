//
//  GameScene.swift
//  GloopGame
//
//  Created by IvanN on 13.08.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        //set bg
        let background = SKSpriteNode(imageNamed: "background_1")
        background.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        background.position = CGPoint(x: 0.0, y: 0.0)
        addChild(background)
        
        //set fg
        let foreground = SKSpriteNode(imageNamed: "foreground_1")
        foreground.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        foreground.position = CGPoint(x: 0.0, y: 0.0)
        addChild(foreground)
        
        //...
        
    }
}
