//
//  SandwichStore.swift
//  SampleSandwichesApp
//
//  Created by 伊藤和也 on 2020/07/02.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore = SandwichStore(sandwiches: testData)
