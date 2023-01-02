//
//  NASAHomeView.swift
//  ZacharyApp
//
//  Created by Zachary on 2/1/23.
//

import SwiftUI

struct NASAHomeView: View {
    
    @EnvironmentObject private var vm: NASAHomeViewModel
    
    let nasaData: NASAModel
    
    
    var body: some View {

        VStack {
            AsyncImage(
                url: URL(string: nasaData.hdurl ?? ""),
                transaction: Transaction(animation: .easeInOut)
            ) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .transition(.scale(scale: 0.1, anchor: .center))
                case .failure:
                    Image(systemName: "wifi.slash")
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 300, height: 300)
            .background(Color.theme.accent)
        .clipShape(Circle())
            
            Text(nasaData.title ?? "")
                .padding()
                .font(.title)
            Text(nasaData.explanation ?? "")
                .padding()
                .font(.headline)
            
        }

    }
}

struct NASAHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NASAHomeView(nasaData: dev.nasa)
        }
    }
}
