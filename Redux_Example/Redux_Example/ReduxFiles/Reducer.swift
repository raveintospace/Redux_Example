//
//  Reducer.swift
//  Redux_Example
//
//  Created by Uri on 4/11/24.
//

import SwiftUI

func appReducer(action: Action, state: inout State) {
    switch action {
    case .loadNames:
        state.names.append(contentsOf: ["Learn Redux", "Learn SwiftUI", "Learn Swift"])
    case .loadNumbers:
        state.numbers.append(contentsOf: ["3", "4", "5"])
    case .updateTitle:
        state.someTitle = "Redux example"
    }
}

// inout because state mutates inside the function and has effect outside the function
