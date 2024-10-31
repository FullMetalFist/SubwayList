//
//  ContentView.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/21/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        VStack {
            Text("\(modelData.exits[29])")
            Text("\(modelData.exits.count)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
