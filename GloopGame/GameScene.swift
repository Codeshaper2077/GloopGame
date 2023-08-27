//
//  GameScene.swift
//  GloopGame
//
//  Created by IvanN on 13.08.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let player = Player()
    
    override func didMove(to view: SKView) {
        //set bg
        let background = SKSpriteNode(imageNamed: "background_1")
        background.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        background.position = CGPoint(x: 0.0, y: 0.0)
        background.zPosition = Layer.background.rawValue
        addChild(background)
        
        //set fg
        let foreground = SKSpriteNode(imageNamed: "foreground_1")
        foreground.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        foreground.position = CGPoint(x: 0.0, y: 0.0)
        foreground.zPosition = Layer.foreground.rawValue
        addChild(foreground)
        
        //add the player
        //let player = Player()
        player.walk()
        player.position = CGPoint(x: size.width / 2, y: foreground.frame.maxY)
        player.setupConstraints(floor: foreground.frame.maxY)
        addChild(player)
        
    }
    
    func touchDown(atPoint pos: CGPoint) {
        
        if pos.x < player.position.x {
            player.moveToPosition(pos: pos, speed: 1.0, direction: "L")
        } else {
            player.moveToPosition(pos: pos, speed: 1.0, direction: "R")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            self.touchDown(atPoint: t.location(in: self))
        }
    }
    
    
    
}
