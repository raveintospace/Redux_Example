//
//  ContentView.swift
//  Redux_Example
//
//  Created by Uri on 4/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var store: Store = Store(initialState: State(), reducer: appReducer)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.state.names, id: \.self) { name in
                    Text(name)
                }
            }
            .toolbar {
                Button("Tap me") {
                    store.reduce(action: .loadNames)
                }
            }
            .navigationTitle("Names")
        }
    }
}

#Preview {
    ContentView()
}
