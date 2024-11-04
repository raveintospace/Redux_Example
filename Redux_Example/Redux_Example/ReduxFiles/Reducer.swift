//
//  Reducer.swift
//  Redux_Example
//
//  Created by Uri on 4/11/24.
//

import SwiftUI

func reducer(action: Action, state: inout State) {
    switch action {
    case .loadNames:
        state.names.append(contentsOf: ["Learn Redux", "Learn SwiftUI", "Learn Swift"])
    }
}

// inout because state mutates inside the function and has effect outside the function
