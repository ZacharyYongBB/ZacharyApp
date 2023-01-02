//
//  NASAHomeViewModel.swift
//  ZacharyApp
//
//  Created by Zachary on 2/1/23.
//

import Foundation
import Combine

class NASAHomeViewModel: ObservableObject {
    
    @Published var nasaData: [NASAModel] = []

    private let nasaDataService = NASADataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addNASASubscribers()
    }
    
    func addNASASubscribers() {
        
        nasaDataService.$nasaData
            .sink { [weak self] returnedNASAData in
                self?.nasaData = returnedNASAData
            }
            .store(in: &cancellables)
        
    }
}
