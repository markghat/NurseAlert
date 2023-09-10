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
    return [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"), Hospital(id: 2, hospital_name: "UNC", image_url: "Duke-Hospital-Logo")]

}

//func callAPI() {
//    let str = "empty"
//    guard let url = URL(string: "https://ysw49bfeec.execute-api.us-east-1.amazonaws.com/Alpha/gethospitals")
//    else {
//        return
//    }
//
//    let task: Void = URLSession.shared.dataTask(with: url) {
//        data, response, error in
//        if let data = data, let string = String(data: data, encoding: .utf8) {
//                self.lambdaHello = string
//            print(str)
//
//        } else {
//            return
//        }
//    }.resume()
//}
//}
