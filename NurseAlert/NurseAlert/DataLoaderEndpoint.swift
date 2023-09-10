//
//  DataLoaderEndpoint.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import Foundation

struct DataLoaderEndpoint {
    static let baseUrl = "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getHospitals"
    
    enum QueryType {
        case getSynopsis(query: String)
        
        var queryName: String {
            switch self {
                case .getSynopsis: return "/works"
            }
        }
    }
}
