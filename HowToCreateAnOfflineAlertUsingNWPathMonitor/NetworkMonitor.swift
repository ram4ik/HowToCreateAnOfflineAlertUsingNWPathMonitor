//
//  NetworkMonitor.swift
//  HowToCreateAnOfflineAlertUsingNWPathMonitor
//
//  Created by Ramill Ibragimov on 6/9/24.
//

import SwiftUI
import Network

class NetworkMonitor: ObservableObject {
    
    private let networkMonitor = NWPathMonitor()
    
    @Published var hasNetworkConnection = false
    
    init() {
        networkMonitor.pathUpdateHandler = { [weak self] path in
            guard let self else { return }
            self.setNetworkConnection(connection: path.status == .satisfied)
        }
        
        networkMonitor.start(queue: DispatchQueue.global())
    }
    
    private func setNetworkConnection(connection: Bool) {
        Task { @MainActor in
            withAnimation {
                hasNetworkConnection = connection
            }
        }
    }
}
