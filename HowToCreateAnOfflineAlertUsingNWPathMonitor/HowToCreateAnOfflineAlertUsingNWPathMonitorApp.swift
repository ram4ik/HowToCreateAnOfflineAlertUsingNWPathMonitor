//
//  HowToCreateAnOfflineAlertUsingNWPathMonitorApp.swift
//  HowToCreateAnOfflineAlertUsingNWPathMonitor
//
//  Created by Ramill Ibragimov on 6/9/24.
//

import SwiftUI

@main
struct HowToCreateAnOfflineAlertUsingNWPathMonitorApp: App {
    @ObservedObject var monitor = NetworkMonitor()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(monitor)
        }
    }
}
