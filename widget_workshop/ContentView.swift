//
//  ContentView.swift
//  widget_workshop
//
//  Created by Tobias Skjelvik on 27/10/2024.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack() {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
