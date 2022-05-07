//
//  TelloService.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 07/05/22.
//

import Foundation
import Network

class UdpSender: ObservableObject {
    
    var data: TelloAddress
    
    var connection: NWConnection?
    
    init(data: TelloAddress) {
        self.data = data
    }
    
    func send(_ payload: Data) {
        guard let connection = self.connection else { return }
        
        connection.send(content: payload, completion: .contentProcessed({ sendError in
            if let error = sendError {
                NSLog("Unable to process and send the data: \(error)")
            } else {
                NSLog("Data has been sent")
                connection.receiveMessage { (data, context, isComplete, error) in
                    guard let myData = data else { return }
                    NSLog("Received message: " + String(decoding: myData, as: UTF8.self))
                }
            }
        }))
    }
    
    func connect(_ toggled: Bool) {
        self.connection = NWConnection(host: data.host, port: data.port, using: .udp)
        
        guard let connection = self.connection else { return }
        
        connection.stateUpdateHandler = { (newState) in
            switch (newState) {
            case .preparing:
                NSLog("Entered state: preparing")
            case .ready:
                NSLog("Entered state: ready")
            case .setup:
                NSLog("Entered state: setup")
            case .cancelled:
                NSLog("Entered state: cancelled")
            case .waiting:
                NSLog("Entered state: waiting")
            case .failed:
                NSLog("Entered state: failed")
            default:
                NSLog("Entered an unknown state")
            }
        }
        
        connection.viabilityUpdateHandler = { (isViable) in
            if (isViable) {
                NSLog("Connection is viable")
            } else {
                NSLog("Connection is not viable")
            }
        }
        
        connection.betterPathUpdateHandler = { (betterPathAvailable) in
            if (betterPathAvailable) {
                NSLog("A better path is availble")
            } else {
                NSLog("No better path is available")
            }
        }
        
        connection.start(queue: .global())
    }
}

