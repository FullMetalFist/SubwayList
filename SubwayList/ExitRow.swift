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
            ScrollView(.horizontal) {
                LazyHStack(alignment: .top, content: {
                    ForEach(0..<exit.daytimeRoutes.count, id: \.self) { route in
                        let index = exit.daytimeRoutes.index(exit.daytimeRoutes.startIndex, offsetBy: route)
                        if !exit.daytimeRoutes[index].isWhitespace {
                            SubwayLetterView(line: "\(exit.daytimeRoutes[index])")
                        }
                    }
                })
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    Text(exit.stationName)
                }
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
        ExitRow(exit: ModelData().exits[0])
        ExitRow(exit: ModelData().exits[7])
        ExitRow(exit: ModelData().exits[330])
    }
}
