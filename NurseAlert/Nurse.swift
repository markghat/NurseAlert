//
//  Nurse.swift
//  NurseAlert
//
//  Created by Ana Lucia Ochoa on 9/10/23.
//

import Foundation


struct Nurse: Identifiable, Hashable {
    var id: Int
    var nurse_name: String
    var hospital_id: Int
    var division: String
    
}

func getNurses(hospital_id: Int) -> [Nurse] {
    // code
//    let response = URLSession("String to API Gateway")
    return [Nurse(id: 1, nurse_name: "Nurse 1", hospital_id: 5, division: "Intensive Care"),
            Nurse(id: 2, nurse_name: "Nurse 2", hospital_id: 5, division: "Patient Recovery"),
            Nurse(id: 3, nurse_name: "Nurse 3", hospital_id: 5, division: "Trauma Care"),
            Nurse(id: 4, nurse_name: "Nurse 4", hospital_id: 5, division: "Post-Anesthesia"),
            Nurse(id: 5, nurse_name: "Nurse 5", hospital_id: 5, division: "Intensive Care")]
}
