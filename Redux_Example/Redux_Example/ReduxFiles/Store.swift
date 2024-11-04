//
//  Store.swift
//  Redux_Example
//
//  Created by Uri on 4/11/24.
//

import SwiftUI

class Store: ObservableObject {
    
    @Published private(set) var state: State
    private let reducer: (Action, inout State) -> Void
    
    init(initialState: State, reducer: @escaping (Action, inout State) -> Void) {
        self.state = initialState
        self.reducer = reducer
    }
    
    // called from view
    func reduce(action: Action) {
        reducer(action, &state)
    }
}

// private set so State can be muted outside the store
