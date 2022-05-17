//
//  AppDelegate.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 07/05/22.
//

import Combine
import SwiftUI

class TelloDelegate: UIResponder, UIApplicationDelegate {
    
    var interactionReceiver = TelloComands()
    var commandSender = UdpSender(data: TelloAddress(host: "192.168.10.1", port: 8889))    
    
    var cancellables = [AnyCancellable]()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        interactionReceiver.$connect.sink(receiveValue: self.commandSender.connect).store(in: &cancellables)
        interactionReceiver.$command.sink(receiveValue: self.commandSender.send).store(in: &cancellables)
        
        Timer.publish(every: 5, on: .main, in: .default)
            .autoconnect()
            .sink(receiveValue: { timer in
                self.commandSender.send("command".data(using: .utf8)!)
            }).store(in: &cancellables)
        
        return true
    }
}
