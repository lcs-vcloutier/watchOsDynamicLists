//
//  watchOsDynamicListsApp.swift
//  watchOsDynamicLists WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-20.
//

import SwiftUI

@main
struct watchOsDynamicListsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
