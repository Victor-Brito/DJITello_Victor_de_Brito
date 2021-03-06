//
//  TelloComands.swift
//  DJITello_Victor_de_Brito
//
//  Created by Victor Brito on 07/05/22.
//


import Foundation

class TelloComands: ObservableObject {
    @Published var connect: Bool = false;
    @Published var command = Data()
    
    func connectPressed() {
        connect.toggle()
    }
    
    func commandPressed() {
        command = "command".data(using: .utf8)!
    }
    
    func takeoffPressed() {
        command = "takeoff".data(using: .utf8)!
    }
    
    func landPressed() {
        command = "land".data(using: .utf8)!
    }
    
    func rotate360CwPressed() {
        command = "cw 360".data(using: .utf8)!
    }
    
    func rotate360CcwPressed() {
        command = "ccw 360".data(using: .utf8)!
    }
    
    //    public func up() {
    //        command = "up 90".data(using: .utf8)!
    //    }
    //
    //    public func forward() {
    //        command = "forward 60".data(using: .utf8)!
    //    }
    //
    //    public func rotate() {
    //        command = "cw 90".data(using: .utf8)!
    //    }
    // Add
}



