//
//  FirstChallenge.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 16/05/22.
//

import Foundation
import SpriteKit
import SwiftUI

class FirstChallenge: SKScene {
    
    @EnvironmentObject var commands: TelloComands
    
    let background = BackGrounds(imgName: "Background")
    let challengeButton = Buttons(buttonName: "Challenge_Button")
    let droneButtons = Buttons(buttonName: "Drone_Buttons")
    let codeButtons = Buttons(buttonName: "Code_Buttons")
    
    let homeButton = Buttons(buttonName: "Exit_Home_Button")
    let playButton = Buttons(buttonName: "Play_Button")
    let selectors = SelectorNodes()
    let drone = DroneNode()
    let droneModals = DroneModalButtons()
    let codeModals = CodeModalButtons()
    
    let tello = TelloComands()
    
    public override func didMove(to view: SKView) {
        background.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        background.size = size
        self.addChild(background)
        challengeButtonPosition()
        droneButtonsPosition()
        codeButtonsPosition()
        
        challengeButton.handler = {
            
        }
        
        droneButtons.handler = self.droneModals.oPen
        
        codeButtons.handler = self.codeModals.oPen
        
        playButton.handler = {
            
        }
        
        selectorButtonPosition()
        homeButtonPosition()
        playButtonPosition()
        droneNodePosition()
        self.addChild(codeModals)
        codeModals.cloSe()
        self.addChild(droneModals)
        droneModals.cloSe()

        
        
    }
    
    
    func challengeButtonPosition() {
        self.addChild(challengeButton)
        challengeButton.position = CGPoint(x: 55, y: 770)
    }
    
    func droneButtonsPosition() {
        self.addChild(droneButtons)
        droneButtons.position = CGPoint(x: 55, y: 515)
    }
    
    func codeButtonsPosition() {
        self.addChild(codeButtons)
        codeButtons.position = CGPoint(x: 55, y: 230)
    }
    
    func homeButtonPosition() {
        self.addChild(homeButton)
        homeButton.position = CGPoint(x: 110, y: 937)
    }
    
    func playButtonPosition() {
        self.addChild(playButton)
        playButton.position = CGPoint(x: 1210, y: 937)
        
    }
    
    func selectorButtonPosition() {
        self.addChild(selectors)
        selectors.position = CGPoint(x: 410, y: 937)
    }
    
    func droneNodePosition() {
        self.addChild(drone)
        drone.position = CGPoint(x: 215, y: 235)
        
    }
    
    func modalDroneButtons() {
        droneModals.oPen()
    }
    
    func modalCodeButtons() {
        codeModals.oPen()
    }
       
}
