//
//  BusDataService.swift
//  ZacharyApp
//
//  Created by Zachary on 1/1/23.
//

import Foundation
import Combine

//class BusDataService {
//    
//    @Published var busData
//    
//    var busSubscription: AnyCancellable?
//    
//    init() {
//        getBusData()
//    }
//    
//    private func getBusData(urlString: String) {
//        guard let url = URL(string: urlString)
//        else {return}
//        
//        busSubscription = NetworkingManager.download(url: url)
//            .decode(type: [CoinModel].self, decoder: JSONDecoder())
//            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedCoins in
//                self?.allCoin = returnedCoins
//                // cancel after getting data, instead of stays listening in case of more published values in the future
//                self?.coinSubscription?.cancel()
//            })
//    }
//}
