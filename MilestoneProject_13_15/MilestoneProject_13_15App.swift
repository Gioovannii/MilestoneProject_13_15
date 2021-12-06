//
//  MilestoneProject_13_15App.swift
//  MilestoneProject_13_15
//
//  Created by Giovanni Gaffé on 2021/12/6.
//

import SwiftUI

@main
struct MilestoneProject_13_15App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(users: User.dumbUsers)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
