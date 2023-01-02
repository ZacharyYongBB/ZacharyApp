//
//  CryptoHomeViewModel.swift
//  ZacharyApp
//
//  Created by Zachary on 1/1/23.
//

import Foundation
import Combine

class CryptoHomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let coinDataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addCoinSubscribers()
    }
    
    func addCoinSubscribers() {
        
        coinDataService.$allCoin
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
