//
//  Icons.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 17/05/22.
//

import Foundation
import SpriteKit

class Icons: SKSpriteNode {
    
    public init (iconName: String) {
        let iconName = SKTexture(imageNamed: iconName)
        super.init(texture: iconName, color: .clear, size: iconName.size())
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
