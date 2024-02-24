//
//  GamesTrackersApp.swift
//  GamesTrackers
//
//  Created by Kel_Jellysh on 18/02/2024.
//

import SwiftUI

@main
struct GamesTrackersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainTabbedView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
