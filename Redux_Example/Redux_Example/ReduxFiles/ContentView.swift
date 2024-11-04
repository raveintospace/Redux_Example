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
            VStack(spacing: 10) {
                List {
                    ForEach(store.state.names, id: \.self) { name in
                        Text(name)
                    }
                }
                
                List {
                    ForEach(store.state.numbers, id: \.self) { number in
                        Text(number)
                    }
                }
            }
            .toolbar {
                Button("Add names") {
                    store.reduce(action: .loadNames)
                }
                .tint(.red)
                Button("Add numbers") {
                    store.reduce(action: .loadNumbers)
                }
                Button("Update title") {
                    store.reduce(action: .updateTitle)
                }
                .tint(.green)
            }
            .navigationTitle(store.state.someTitle)
        }
    }
}

#Preview {
    ContentView()
}
