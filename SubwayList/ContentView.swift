//
//  ContentView.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("\(exits[700])")
            Text("\(exits.count)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
