//
//  DataLoader.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import Foundation

class DataLoader: ObservableObject {
    let apiClient: DataLoaderAPI
    
    @Published private(set) var state: LoadingState = .idle
    
    enum LoadingState {
        case idle
        case loading
        case success(data: [Hospital])
        case failed(error: Error)
    }
    
    init(apiClient: DataLoaderAPI) {
        self.apiClient = apiClient
    }
    
    @MainActor
    func loadHospitalData(queryId: String) async {
        self.state = .loading
        do {
            let response = try await apiClient.fetchHospitals(queryId: queryId)
            self.state = .success(data: response)
        } catch {
            self.state = .failed(error: error)
        }
    }
}
