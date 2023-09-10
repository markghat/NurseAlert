//
//  Room.swift
//  NurseAlert
//
//  Created by Monty Truitt on 9/9/23.
//

import Foundation

struct Room: Identifiable, Hashable {
    var id: Int
    var room_name: String
    var hospital_id: Int
    var division: String
    var number_employees: Int
}

func getRoomsInHospital(hospital_id: String) -> [Room] {
    // code
//    let response = URLSession("String to API Gateway")
    return [Room(id: 1, room_name: "Room 124", hospital_id: 5, division: "Intensive Care", number_employees: 5),
            Room(id: 2, room_name: "Room 130", hospital_id: 5, division: "Patient Recovery", number_employees: 4),
            Room(id: 3, room_name: "Room 150", hospital_id: 5, division: "Patient Recovery", number_employees: 4),
            Room(id: 4, room_name: "Room 161", hospital_id: 5, division: "Intensive Care", number_employees: 6),
            Room(id: 5, room_name: "Room 210", hospital_id: 5, division: "Intensive Care", number_employees: 4),
            Room(id: 6, room_name: "Room 212", hospital_id: 5, division: "Post-Anesthesia ", number_employees: 8),
            Room(id: 7, room_name: "Room 220", hospital_id: 5, division: "Post-Anesthesia ", number_employees: 10),
            Room(id: 8, room_name: "Room 301", hospital_id: 5, division: "Trauma Care", number_employees: 3),
            Room(id: 9, room_name: "Room 305", hospital_id: 5, division: "Trauma Care", number_employees: 5),
            Room(id: 10, room_name: "Room 306", hospital_id: 5, division: "Trauma Care", number_employees: 5)]
}
