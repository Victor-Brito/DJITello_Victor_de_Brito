//
//  DroneNode.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 17/05/22.
//

import Foundation
import SpriteKit

class DroneNode: SKNode {
    
    let droneNode = Icons(iconName: "Drone_Icon")
    
    override init() {
        super.init()
        addDroneNode()
    }
    
    func addDroneNode() {
        addChild(droneNode)
        droneNode.position = CGPoint(x: 130, y: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
