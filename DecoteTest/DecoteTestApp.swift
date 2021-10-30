//
//  DecoteTestApp.swift
//  DecoteTest
//
//  Created by Maxim Mitin on 30.10.21.
//

import SwiftUI

@main
struct DecoteTestApp: App {
    let persistenceController = PersistenceController.shared
    
    @AppStorage("isDarkMode") var isDarkMode = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
