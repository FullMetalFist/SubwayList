//
//  ExitRow.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/23/24.
//

import SwiftUI

struct ExitRow: View {
    var exit: Exit
    var lines: String = ""
    
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<exit.daytimeRoutes.count) { i in
                    let index = exit.daytimeRoutes.index(exit.daytimeRoutes.startIndex, offsetBy: i)
                    if !exit.daytimeRoutes[index].isWhitespace {
                        SubwayLetterView(line: "\(exit.daytimeRoutes[index])")
                    }
                    
                }
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
