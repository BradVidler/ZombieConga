//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Bradley Vidler on 2014-10-16.
//  Copyright (c) 2014 Bradley Vidler. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        var background: SKSpriteNode
        background = SKSpriteNode(imageNamed: "MainMenu")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        self.addChild(background)
    }
    
    func sceneTapped() {
        let transition = SKTransition.doorsOpenHorizontalWithDuration(1.5)
        let nextScene = GameScene(size: size)
        nextScene.scaleMode = scaleMode
        view?.presentScene(nextScene, transition: transition)
    }
    
    override func touchesBegan(touches: NSSet,
        withEvent event: UIEvent) {
            let touch = touches.anyObject() as UITouch
            let touchLocation = touch.locationInNode(self)
            sceneTapped()
    }

}