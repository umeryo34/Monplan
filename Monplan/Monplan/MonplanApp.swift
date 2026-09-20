//
//  MonplanApp.swift
//  Monplan
//
//  Created by 梅澤遼 on 2026/09/20.
//

import SwiftUI
import SwiftData

@main
struct MonplanApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Label("ホーム", systemImage: "house")
                    }
                ContentView()
                    .tabItem {
                        Label("一覧", systemImage: "list.bullet")
                    }
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
