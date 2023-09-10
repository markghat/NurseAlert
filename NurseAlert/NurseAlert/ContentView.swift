//
//  ContentView.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var lambdaHello: String?

        var body: some View {
            TabView {
                if let currentTemp = lambdaHello {
                    Text(currentTemp)
                } else {
                    ProgressView()
                        .padding(.trailing, 16)
                }
            }.onAppear {
                 callAPI()
            }
        }
    
    func callAPI() {
        guard let url = URL(string: "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getRoomsInHospitalV2?hospital_id=1")
        else {
            return
        }
        let request = NSMutableURLRequest(url: url as URL)
            request.setValue("2", forHTTPHeaderField: "hospital_id")
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let str = "empty"
        let task: Void = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            if let data = data, let string = String(data: data, encoding: .utf8) {
                self.lambdaHello = string

            } else {
                return
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
