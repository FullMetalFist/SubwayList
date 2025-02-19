//
//  ColorExtension.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 11/14/24.
//

import SwiftUI

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
    
    static let seventhAv = {
        return Color(hex: 0xEE352E)
    }
    
    static let lexington = {
        return Color(hex: 0x00933C)
    }
    
    static let flushing = {
        return Color(hex: 0xB933AD)
    }
    
    static let eighthAv = {
        return Color(hex: 0x0039A6)
    }
    
    static let sixthAv = {
        return Color(hex: 0xFF6319)
    }
    
    static let nassauStreet = {
        return Color(hex: 0x996633)
    }
    
    static let broadway = {
        return Color(hex: 0xFCCC0A)
    }
    
    static let crosstown = {
        return Color(hex: 0x6CBE45)
    }
    
    static let fourteenthStreet = {
        return Color(hex: 0xA7A9AC)
    }
    
    static let brooklynShuttle = {
        return Color(hex: 0x808183)
    }
}
