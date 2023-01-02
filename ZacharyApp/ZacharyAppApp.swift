//
//  ZacharyAppApp.swift
//  ZacharyApp
//
//  Created by Zachary on 25/12/22.
//

import SwiftUI

@main
struct ZacharyAppApp: App {
    
    @EnvironmentObject private var nasavm: NASAHomeViewModel
    
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
                    Label("Snap 📸", systemImage: "photo")
                }
                
                NavigationStack {
                    BusHomeView()
                }
                .tabItem {
                    Label("Bus 🚌", systemImage: "bus")
                }
                NavigationStack {
                    NASAHomeView(nasaData: NASAModel(copyright: "Tunc Tezel", date: "2023-01-02", explanation: "Look up tonight and see a whole bunch of planets. Just after sunset, looking west, planets Venus, Saturn, Jupiter and Mars will all be simultaneously visible. Listed west to east, this planetary lineup will have Venus nearest the horizon, but setting shortly after the Sun.  It doesn't matter where on Earth you live because this early evening planet parade will be visible through clear skies all around the globe.  Taken late last month, the featured image captured all of these planets and more: the Moon and planet Mercury were also simultaneously visible.  Below visibility were the planets Neptune and Uranus, making this a nearly all-planet panorama. In the foreground are hills around the small village of Gökçeören, Kaş, Turkey, near the Mediterranean coast.  Bright stars Altair, Fomalhaut, and Aldebaran are also prominent, as well as the Pleiades star cluster. Venus will rise higher in the sky at sunset as January continues, but Saturn will descend.", hdurl: "https://apod.nasa.gov/apod/image/2301/AllPlanets_Tezel_1680_annotated.jpg", mediaType: "image", serviceVersion: "v1", title: "After Sunset Planet Parade", url: "https://apod.nasa.gov/apod/image/2301/AllPlanets_Tezel_1080_annotated.jpg"))
                }
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
