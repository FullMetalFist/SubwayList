//
//  ExitRow.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/23/24.
//

import SwiftUI

struct ExitRow: View {
    var exit: Exit
    var lines: [Character] = []
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                        .fill(Color.yellow)
                    Text(exit.daytimeRoutes)
                        .font(Font.custom("Helvetica", size: 24)).bold()
                }
                .frame(width: 80)
                Spacer()
            }
            HStack {
                Text(exit.stationName)
            }
            HStack {
                Text(exit.entranceType.rawValue)
            }
        }
        .padding()
        .border(.black)
    }
}

#Preview {
    Group {
        ExitRow(exit: ModelData().exits[9])
        ExitRow(exit: ModelData().exits[7])
    }
}
