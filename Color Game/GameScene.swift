//
//  GameScene.swift
//  Color Game
//
//  Created by Bruce Burgess on 2/6/19.
//  Copyright © 2019 Red Raven Computing Studios. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var tracksArray:[SKSpriteNode]? = [SKSpriteNode]()
    
    func setupTracks() {
        for i in 0 ... 8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray?.append(track)
            }
        }
    }
    
    override func didMove(to view: SKView) {
        setupTracks()
        
        tracksArray?.first?.color = UIColor.green
       
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
