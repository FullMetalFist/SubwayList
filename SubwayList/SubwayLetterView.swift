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
    @ScaledMetric(relativeTo: .title) var paddingWidth = 6
    
    var body: some View {
        Text("\(line)")
            .font(.caption)
            .padding(8)
            .font(Font.custom("Helvetica", size: 8, relativeTo: .caption)).bold()
            .foregroundStyle(textTintFor(line: line))
            .background {
                Circle()
                    .foregroundStyle(makeColorFrom(line: line))
            }
    }
    
    private func textTintFor(line: String) -> Color {
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
            return .seventhAv()
        case "4", "5", "6":
            return .lexington()
        case "7":
            return .flushing()
        case "A", "C", "E", "H":
            return .eighthAv()
        case "B", "D", "F", "M":
            return .sixthAv()
        case "J", "Z":
            return .nassauStreet()
        case "N", "R", "Q", "W":
            return .broadway()
        case "G":
            return .crosstown()
        case "L":
            return .fourteenthStreet()
        case "S":
            return .brooklynShuttle()
        default:
            return .clear
        }
    }
}

#Preview {
    SubwayLetterView(line: "Q")
}
