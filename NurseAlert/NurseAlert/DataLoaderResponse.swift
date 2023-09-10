//
//  DataLoaderResponse.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import Foundation

struct DataLoaderResponse {
    var hospitals: [Hospital]
    
    static func mock() -> [Hospital] {
        [Hospital(id: 1, hospital_name: "dummy", image_url: "Duke-Hospital-Logo")]
    }
}

struct DataLoaderResponseContainer: Decodable {
    var hospitals: [Hospital]

  enum CodingKeys: String, CodingKey {
    case hospitals = "hospitals"
  }
}
