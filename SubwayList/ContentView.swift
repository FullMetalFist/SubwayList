//
//  ContentView.swift
//  SubwayList
//
//  Created by Michael Vilabrera on 10/21/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        TabView {
            ExitList(exits: modelData.exits)
                .tabItem {
                    Label("Station List", systemImage: "list.triangle")
                }
            Map()
                .tabItem {
                    Label("Map", systemImage: "globe")
                }
            
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
