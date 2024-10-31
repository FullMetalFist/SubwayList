//
//  SubwayLetterView.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/30/24.
//

import SwiftUI

struct SubwayLetterView: View {
    var line: Character
    var lineColor: Color
    var textDark: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(lineColor)
            Text("\(line)")
                .font(Font.custom("Helvetica", size: 24)).bold()
                .foregroundStyle(textDark ? .black : .white)
        }
        .frame(width: 40)
    }
}

#Preview {
    SubwayLetterView(line: "E", lineColor: .blue, textDark: false)
}
