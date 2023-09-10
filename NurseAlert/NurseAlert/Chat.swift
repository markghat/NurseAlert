//
//  Chat.swift
//  NurseAlert
//
//  Created by Mark Andrew Ghattas on 9/10/23.
//

import Foundation

func sendToLLM(textMessage: String, hospital_id: Int, room_id: Int) {
    guard let url = URL(string:  "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/findUrgency?hospital_id=\(hospital_id)&room_id=\(room_id)")
        else {
            return
        }
        let request = NSMutableURLRequest(url: url as URL)
        request.httpBody = textMessage.data(using: .utf8)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let task: Void = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            if let data = data, let string = String(data: data, encoding: .utf8) {
             

            } else {
                return
            }
        }.resume()
   }
