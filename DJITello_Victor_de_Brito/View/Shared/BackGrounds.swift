//
//  BackGrounds.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 16/05/22.
//

import Foundation
import SpriteKit
class BackGrounds: SKSpriteNode {
    
    public init (imgName: String){
        let node = SKTexture(imageNamed: imgName)
        super.init(texture: node, color: .clear, size: Constants.background)
        self.anchorPoint = CGPoint(x: 0.0, y: 0.0)
     }
     
     required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
}
