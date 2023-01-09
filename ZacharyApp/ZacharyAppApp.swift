//
//  ZacharyAppApp.swift
//  ZacharyApp
//
//  Created by Zachary on 25/12/22.
//

import SwiftUI

@main
struct ZacharyAppApp: App {
        
    @StateObject private var cryptoVm = CryptoHomeViewModel()
    @StateObject private var nasaVm = NasaHomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationStack {
                    CryptoHomeView()
                }
                .environmentObject(cryptoVm)
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
                    Label("Snap 📸", systemImage: "photo")
                }
                
                NavigationStack {
                    BusHomeView()
                }
                .tabItem {
                    Label("Bus 🚌", systemImage: "bus")
                }
                NavigationStack {
                    NasaHomeView(nasa)
                }
                .environmentObject(nasaVm)
                .tabItem {
                    Label("NASA 👽", systemImage: "globe.asia.australia")
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
