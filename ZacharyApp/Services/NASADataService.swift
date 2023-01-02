//
//  NASADataService.swift
//  ZacharyApp
//
//  Created by Zachary on 2/1/23.
//

import Foundation
import Combine

class NASADataService {
    
    @Published var nasaData: [NASAModel] = []

    var nasaDataSubscription: AnyCancellable?
    
    init() {
        getNASAData()
    }
    
    private func getNASAData() {
        guard let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=t14iHVtd0lwAUoIuoUs0vQBe9kcAyJhmduYGWuFY")
        else {return}
        
        nasaDataSubscription = NetworkingManager.download(url: url)
            .decode(type: [NASAModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedNASAData in
                self?.nasaData = returnedNASAData
            })
    }
    
}
