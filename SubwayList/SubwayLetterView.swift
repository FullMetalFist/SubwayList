//
//  SubwayLetterView.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/30/24.
//

import SwiftUI

struct SubwayLetterView: View {
    var line: String
    var lineColor: Color = .clear
    let spaceChar: String = " "
    @ScaledMetric(relativeTo: .title) var paddingWidth = 12
    
    var body: some View {
        Text("\(line)")
            .font(.title)
            .font(Font.custom("Helvetica", size: 24)).bold()
            .foregroundStyle(textDarkFor(line: line))
            .padding(paddingWidth)
            .background {
                Circle()
                    .fill(line == spaceChar ? .clear : makeColorFrom(line: line))
            }
    }
    
    private func textDarkFor(line: String) -> Color {
        switch line {
        case "N", "Q", "R", "W":
            return .black
        default:
            return .white
        }
    }
    
    private func makeColorFrom(line: String) -> Color {
        switch line {
        case "1", "2", "3":
            return Color(hex: 0xEE352E)
        case "4", "5", "6":
            return Color(hex: 0x00933C)
        case "7":
            return Color(hex: 0xB933AD)
        case "A", "C", "E", "H":
            return Color(hex: 0x0039A6)
        case "B", "D", "F", "M":
            return Color(hex: 0xFF6319)
        case "J", "Z":
            return Color(hex: 0x996633)
        case "N", "R", "Q", "W":
            return Color(hex: 0xFCCC0A)
        case "G":
            return Color(hex: 0x6CBE45)
        case "L":
            return Color(hex: 0xA7A9AC)
        case "S":
            return Color(hex: 0x808183)
        default:
            return .clear
        }
    }
}

#Preview {
    SubwayLetterView(line: "S")
}
