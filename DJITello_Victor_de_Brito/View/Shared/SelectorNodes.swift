//
//  SelectorNodes.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 17/05/22.
//

import Foundation
import SpriteKit

class SelectorNodes: SKNode {
    
    let selectorOne = Buttons(buttonName: "Card_Selector")
    let selectorTwo = Buttons(buttonName: "Card_Selector")
    let selectorThre = Buttons(buttonName: "Card_Selector")
    let selectorFour = Buttons(buttonName: "Card_Selector")
    let selectorFive = Buttons(buttonName: "Card_Selector")
    
    override init() {
        super.init()
        addSelectorCards()
    }
    
    func addSelectorCards() {
        addChild(selectorOne)
        selectorOne.position = CGPoint(x: 0, y: 0)
        addChild(selectorTwo)
        selectorTwo.position = CGPoint(x: 130, y: 0)
        addChild(selectorThre)
        selectorThre.position = CGPoint(x: 260, y: 0)
        addChild(selectorFour)
        selectorFour.position = CGPoint(x: 390, y: 0)
        addChild(selectorFive)
        selectorFive.position = CGPoint(x: 520, y: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
