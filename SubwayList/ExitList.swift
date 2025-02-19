//
//  ExitList.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/23/24.
//

import SwiftUI

struct ExitList: View {
    @State var exits = ModelData().exits
    
    var body: some View {
        List(exits, id: \.id) { exit in
            ExitRow(exit: exit)
        }
    }
}

#Preview {
    ExitList()
}
