//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by junseopLee on 1/2/26.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
