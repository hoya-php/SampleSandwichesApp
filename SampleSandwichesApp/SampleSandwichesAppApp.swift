//
//  SampleSandwichesAppApp.swift
//  SampleSandwichesApp
//
//  Created by 伊藤和也 on 2020/06/30.
//

import SwiftUI

@main
struct SampleSandwichesAppApp: App {
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
    
}
