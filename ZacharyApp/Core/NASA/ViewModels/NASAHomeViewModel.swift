//
//  NASAHomeViewModel.swift
//  ZacharyApp
//
//  Created by Zachary on 2/1/23.
//

import Foundation
import Combine



class NasaHomeViewModel: ObservableObject {
    
    @Published var nasaApod: [ApodModel] = []

    private let nasaDataService = NasaDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addNASASubscribers()
    }
    
    func addNASASubscribers() {
        
        nasaDataService.$nasaData
            .sink { [weak self] returnedNASAData in
                self?.nasaApod = returnedNASAData
            }
            .store(in: &cancellables)
        
    }
}
