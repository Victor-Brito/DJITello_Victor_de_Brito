//
//  ContentView.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 07/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var commands: TelloComands
    
    var body: some View {
        HStack {
            commandView
        }
    }
    
    var commandView: some View {
        VStack {
            Button("Connect") {
                commands.connectPressed()
            }
            .padding()
            Button("Command") {
                commands.commandPressed()
            }
            .padding()
            Button("Takeoff") {
                commands.takeoffPressed()
            }
            .padding()
            Button("Land") {
                commands.landPressed()
                
            }
            .padding()
            Button("Rotate 360° clockwise") {
                commands.rotate360CwPressed()
            }
            .padding()
            Button("Rotate 360° counterclockwise") {
                commands.rotate360CcwPressed()
            }

//            Form {
//                Section {
//                    Button("Takeoff") {
//                        commands.takeoffPressed()
//                    }
//                    Button("Land") {
//                        commands.landPressed()
//
//                    }
//                }
//                Section {
//                    Button("Rotate 360° clockwise") {
//                        commands.rotate360CwPressed()
//                    }
//                    Button("Rotate 360° counterclockwise") {
//                        commands.rotate360CcwPressed()
//                    }
//
//                }
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
