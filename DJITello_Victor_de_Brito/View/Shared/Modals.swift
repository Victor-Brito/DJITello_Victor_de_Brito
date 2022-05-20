//
//  ModalsNodes.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 17/05/22.
//

import Foundation
import SpriteKit

class DroneModalButtons: SKNode {
    
    
    //MARK: BackGrounds options
    let challengeBG = BackGrounds(imgName: "ChallengeInfo")
    let droneBG = BackGrounds(imgName: "Comand_Frame")
   
    
    //MARK: Drone comands buttons
    let up = Buttons(buttonName: "Comand_UP")
    let forward = Buttons(buttonName: "Comand_Forward")
    let back = Buttons(buttonName: "Comand_Back")
    let right = Buttons(buttonName: "Comand_Right")
    let left = Buttons(buttonName: "Comand_Left")
    let leftYaw = Buttons(buttonName: "Comand_leftYaw")
    let rightYaw = Buttons(buttonName: "Comand_rightYaw")
    let down = Buttons(buttonName: "Comand_Down")
    let land = Buttons(buttonName: "Comand_Land")
    let flipF = Buttons(buttonName: "Comand_FlipF")
    let flipB = Buttons(buttonName: "Comand_FlipB")
    let flipR = Buttons(buttonName: "Comand_FlipR")
    let close = Buttons(buttonName: "Close_Button")
    
    override init() {
        super.init()
        self.isHidden = true
        addDroneComands()
        close.handler = self.cloSe
    }
    
    func addDroneComands() {
        addChild(droneBG)
        droneBG.position = CGPoint(x: 150, y: -10)
        addChild(close)
        close.position = CGPoint(x: 170, y: 450)
        addChild(up)
        up.position = CGPoint(x: 300, y: 320)
        addChild(forward)
        forward.position = CGPoint(x: 300, y: 210)
        addChild(back)
        back.position = CGPoint(x: 300, y: 100)
        addChild(right)
        right.position = CGPoint(x: 410, y: 320)
        addChild(left)
        left.position = CGPoint(x: 410, y: 210 )
        addChild(leftYaw)
        leftYaw.position = CGPoint(x: 410, y: 100)
        addChild(rightYaw)
        rightYaw.position = CGPoint(x: 520, y: 320)
        addChild(down)
        down.position = CGPoint(x: 520, y: 210)
        addChild(land)
        land.position = CGPoint(x: 520, y: 100)
        addChild(flipF)
        flipF.position = CGPoint(x: 630, y: 320)
        addChild(flipB)
        flipB.position = CGPoint(x: 630, y: 210)
        addChild(flipR)
        flipR.position = CGPoint(x: 630, y: 100)
    }
    
    func oPen() {
        self.isHidden = false
        let open = SKAction.move(to: CGPoint(x: 250, y: 250), duration: 1.0)
        self.run(open)
    }
    
    func cloSe() {
        let close = SKAction.move(to: CGPoint(x: -900, y: 250), duration: 1.0)
        self.run(close)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CodeModalButtons: SKNode {
    //MARK: BackGrounds options
    let codeBG = BackGrounds(imgName: "Background_Code")
    
    //MARK: Code buttons
    let iF = Buttons(buttonName: "Code_IF")
    let whiLe = Buttons(buttonName: "Code_WHILE")
    let foR = Buttons(buttonName: "Code_FOR")
    let funC = Buttons(buttonName: "Code_FUNC")
    let booL = Buttons(buttonName: "Code_BOOL")
    let repeaT = Buttons(buttonName: "Code_REPEAT")
    let smaller = Buttons(buttonName: "Code_SMALLER")
    let bigger = Buttons(buttonName: "Code_BIGGER")
    let iquals = Buttons(buttonName: "Code_iquals")
    let oR = Buttons(buttonName: "Code_OR")
    let anD = Buttons(buttonName: "Code_And")
    let multi = Buttons(buttonName: "Code_x")
    let close = Buttons(buttonName: "Close_Button")
    
    override init() {
        super.init()
        self.isHidden = true
        addCodeButtons()
        close.handler = self.cloSe
    }
    
    func addCodeButtons() {
        addChild(codeBG)
        codeBG.position = CGPoint(x: 150, y: -10)
        addChild(close)
        close.position = CGPoint(x: 170, y: 450)
        addChild(whiLe)
        whiLe.position = CGPoint(x: 300, y: 320)
        addChild(foR)
        foR.position = CGPoint(x: 300, y: 210)
        addChild(funC)
        funC.position = CGPoint(x: 300, y: 100)
        addChild(booL)
        booL.position = CGPoint(x: 410, y: 320)
        addChild(repeaT)
        repeaT.position = CGPoint(x: 410, y: 210 )
        addChild(smaller)
        smaller.position = CGPoint(x: 410, y: 100)
        addChild(bigger)
        bigger.position = CGPoint(x: 520, y: 320)
        addChild(iquals)
        iquals.position = CGPoint(x: 520, y: 210)
        addChild(oR)
        oR.position = CGPoint(x: 520, y: 100)
        addChild(anD)
        anD.position = CGPoint(x: 630, y: 320)
        addChild(multi)
        multi.position = CGPoint(x: 630, y: 200)
        addChild(iF)
        iF.position = CGPoint(x: 630, y: 100)
    }
    
    func oPen() {
        self.isHidden = false
        let open = SKAction.move(to: CGPoint(x: 250, y: 250), duration: 1.0)
        self.run(open)
    }
    
    func cloSe() {
        let close = SKAction.move(to: CGPoint(x: -900, y: 250), duration: 1.0)
        self.run(close)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
