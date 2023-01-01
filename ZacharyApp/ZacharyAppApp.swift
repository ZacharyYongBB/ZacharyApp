//
//  ZacharyAppApp.swift
//  ZacharyApp
//
//  Created by Zachary on 25/12/22.
//

import SwiftUI

@main
struct ZacharyAppApp: App {
    
    @StateObject private var vm = CryptoHomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    CryptoHomeView()
                }
                .environmentObject(vm)
                .tabItem {
                    Label("Crypto 🚀", systemImage: "bitcoinsign.circle")
                }
                
                NavigationStack {
                    CryptoHomeView()
                }
                .tabItem {
                    Label("Tasks 🥱", systemImage: "square.and.pencil")
                }
                
                NavigationStack {
                    CryptoHomeView()
                }
                .tabItem {
                    Label("Say Cheese 📸", systemImage: "photo")
                }
                
                NavigationStack {
                    BusHomeView()
                }
                .tabItem {
                    Label("Bus to Busan 🚌", systemImage: "bus")
                }
            }
            .tint(Color.theme.accent)
            .onAppear {
                            // correct the transparency bug for Tab bars
                            let tabBarAppearance = UITabBarAppearance()
                            tabBarAppearance.configureWithDefaultBackground()
                            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                            // correct the transparency bug for Navigation bars
                            let navigationBarAppearance = UINavigationBarAppearance()
                            navigationBarAppearance.configureWithOpaqueBackground()
                            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
                        }
        }
    }
}
