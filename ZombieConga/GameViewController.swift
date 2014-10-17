//
//  GameViewController.swift
//  ZombieConga
//
//  Created by Bradley Vidler on 2014-10-04.
//  Copyright (c) 2014 Bradley Vidler. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = MainMenuScene(size:CGSize(width: 2048, height: 1536))
        let skView = self.view as SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}