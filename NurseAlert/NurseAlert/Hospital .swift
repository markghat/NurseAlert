//
//  Hospital .swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

import Foundation


struct Hospital: Identifiable, Hashable{
    var id: Int
    var hospital_name: String
    var image_url: String
    
}

func getHospital() -> [Hospital]{
    return [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"),
            Hospital(id: 2, hospital_name: "UNC", image_url: "Duke-Hospital-Logo")]

}
