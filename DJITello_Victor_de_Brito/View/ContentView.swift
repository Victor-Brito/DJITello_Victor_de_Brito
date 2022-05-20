//
//  ContentView.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 07/05/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        let scene = FirstChallenge()
        
        scene.size = CGSize(width: 1366, height: 1024)
        scene.scaleMode = .fill
        return scene
    }
    
    
    var body: some View {
        ZStack {
            GeometryReader{
                sizeScreen in
                SpriteView(scene: scene)
                    .frame(width: sizeScreen.size.width, height: sizeScreen.size.height)
            }
        }
        .ignoresSafeArea()
    }
}

//@EnvironmentObject var commands: TelloComands

//    var body: some View {
//        HStack {
//            //commandView
//        }
//    }

//    var commandView: some View {
//        VStack {
//            Button("Connect") {
//                commands.connectPressed()
//            }
//            .padding()
//            Button("Command") {
//                commands.commandPressed()
//            }
//            .padding()
//            Button("Takeoff") {
//                commands.takeoffPressed()
//            }
//            .padding()
//            Button("Land") {
//                commands.landPressed()
//
//            }
//            .padding()
//            Button("Rotate 360° clockwise") {
//                commands.rotate360CwPressed()
//            }
//            .padding()
//            Button("Rotate 360° counterclockwise") {
//                commands.rotate360CcwPressed()
//            }
//        }
//    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
