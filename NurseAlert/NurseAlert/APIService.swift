//
//  APIService.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import Foundation

//let base_url = "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/"
//
//func makeAPICall(formatted_url: String) -> String {
//    guard let url = URL(string: formatted_url)
//    else {
//        return "Error"
//    }
//    let request = NSMutableURLRequest(url: url as URL)
//        request.httpMethod = "GET"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    var jsonString = "emptyString"
//    let task: Void = URLSession.shared.dataTask(with: request as URLRequest) {
//        data, response, error in
//        if let data = data, let string = String(data: data, encoding: .utf8) {
//            jsonString = string
//
//        } else {
//            return
//        }
//    }.resume()
//    return jsonString
//}
//
//func getHospitals() -> String {
//    let query_string = base_url + "getHospitals"
//    return makeAPICall(formatted_url: query_string)
//}
//
//func getRoomsInHospital(hospital_id: String) -> String {
//    let query_string = base_url + "getRoomsInHospital?hospital_id=" + hospital_id
//    return makeAPICall(formatted_url: query_string)
//}
//
//func getEmployeesInRoom(room_id: String) -> String {
//    let query_string = base_url + "getEmployeesInRoom?room_id=" + room_id
//    return makeAPICall(formatted_url: query_string)
//}
//
//func getInformationForRooms(hospital_id: String) -> String {
//    let query_string = base_url + "getInformationForRooms?hospital_id=" + hospital_id
//    return makeAPICall(formatted_url: query_string)
//}
