//
//  DJITello_Victor_de_BritoApp.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 07/05/22.
//

import SwiftUI

@main
struct TelloApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appDelegate.interactionReceiver)
        }
        .onChange(of: scenePhase) { (newScenePhase) in
            switch newScenePhase {
            case .active:
                break
            case .background:
                break
            case .inactive:
                break
            @unknown default:
                print("default")
            }
        }
    }
}
