//
//  Hospital .swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

import Foundation


struct Hospital: Identifiable, Hashable, Decodable {
    var id: Int
    var hospital_name: String
    var image_url: String
    
    enum CodingKeys: String, CodingKey {
        case id = "hospital_id"
        case hospital_name = "hospital_name"
        case image_url = "image_url"
    }
    
    static let previewData = [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"), Hospital(id: 2, hospital_name: "UNC", image_url: "UNC-Hospital-Logo"), Hospital(id: 3, hospital_name: "Wake Forest", image_url: "WakeForest-Hospital-Logo"), Hospital(id: 4, hospital_name: "NC State", image_url: "NCState-Hospital-Logo")]
}

func getHospital() -> [Hospital] {
   return [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"), Hospital(id: 2, hospital_name: "N.C. Memorial Hospital", image_url: "UNC-Hospital-Logo"), Hospital(id: 3, hospital_name: "Wake Forest Baptist Medical Center", image_url: "WakeForest-Hospital-Logo"), Hospital(id: 4, hospital_name: "Cedars Sinai Medical Center", image_url: "Cedars-Hospital-Logo")]
}

func formatHospitals() -> [String: [Hospital]]{
   return ["Other Hospitals": [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"),
                                Hospital(id: 2, hospital_name: "UNC", image_url: "UNC-Hospital-Logo")],
            "Hospitals Near You": [Hospital(id: 3, hospital_name: "Wake Forest", image_url: "WakeForest-Hospital-Logo")]]
}
