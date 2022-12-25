//
//  CryptoHomeView.swift
//  ZacharyApp
//
//  Created by Zachary on 25/12/22.
//

import SwiftUI

struct CryptoHomeView: View {
    
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color.theme.background
                .ignoresSafeArea()
            
            // content
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
        }
    }
}

struct CryptoHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CryptoHomeView()
        }
    }
}

extension CryptoHomeView {
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "HODL 🤡" : "Crypto Prices 🤑")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none, value: showPortfolio)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
}
