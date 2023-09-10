//
//  DataLoaderAPIService.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import Foundation

protocol DataLoaderAPI {
    func fetchHospitals(queryId: String) async throws -> [Hospital]
}

struct DataLoaderAPIService: DataLoaderAPI, APIClient {
    
    let session: URLSession = .shared
    
    func fetchHospitals(queryId: String) async throws -> [Hospital] {
        let response: [Hospital] = try await performRequest(url: "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getHospitals")
        return response
    }
}

struct MockDataLoaderAPIService: DataLoaderAPI {
    func fetchHospitals(queryId: String) async throws -> [Hospital] {
        DataLoaderResponse.mock()
    }
}
