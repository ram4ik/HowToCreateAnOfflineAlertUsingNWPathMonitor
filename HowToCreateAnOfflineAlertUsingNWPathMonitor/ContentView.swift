//
//  ContentView.swift
//  HowToCreateAnOfflineAlertUsingNWPathMonitor
//
//  Created by Ramill Ibragimov on 6/9/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var monitor: NetworkMonitor
    
    var body: some View {
        VStack {
            if monitor.hasNetworkConnection {
                Text("Online")
            } else {
                Text("Offline")
            }
        }
    }
}

#Preview {
    ContentView()
}
