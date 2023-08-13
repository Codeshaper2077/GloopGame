//
//  GameViewController.swift
//  GloopGame
//
//  Created by IvanN on 13.08.2023.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            //1336 × 1024
            let scene = GameScene(size: CGSize(width: 1336, height: 1024))
            print("width\(view.frame.width), height:\(view.frame.height)")
            scene.scaleMode = .aspectFill
            scene.backgroundColor = UIColor(red: 20/255, green: 120/255, blue: 200/255, alpha: 1.0)
            
            view.showsPhysics = false
            view.showsFPS = true
            view.showsNodeCount = true
            view.ignoresSiblingOrder = false
            
            view.presentScene(scene)
        }
        
        
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
