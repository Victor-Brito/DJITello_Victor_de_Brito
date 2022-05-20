//
//  Buttons.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 16/05/22.
//

import Foundation
import SpriteKit

class Buttons: SKSpriteNode {
    
    typealias Handler = () -> Void?
    
    var handler: Handler?
    
    public init (buttonName: String, action: Handler? = nil ) {
        let buttonTexture = SKTexture(imageNamed: buttonName)
        self.handler = action
        super.init(texture: buttonTexture, color: .clear, size: buttonTexture.size())
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let handler = handler else { return }
        handler()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
