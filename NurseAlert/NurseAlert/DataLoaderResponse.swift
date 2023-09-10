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
        [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"),
         Hospital(id: 2, hospital_name: "N.C. Memorial Hospital", image_url: "UNC-Hospital-Logo"),
         Hospital(id: 3, hospital_name: "Wake Medical Center", image_url: "WakeForest-Hospital-Logo")]
    }
}

struct DataLoaderResponseContainer: Decodable {
    var hospitals: [Hospital]

  enum CodingKeys: String, CodingKey {
    case hospitals = "hospitals"
  }
}
