//
//  Hospital .swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

import Foundation


struct Hospital: Identifiable, Hashable{
    var id: Int
    var hospital_name: String
    var image_url: String
    
}

func getHospital() -> [Hospital] {
   return [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"), Hospital(id: 2, hospital_name: "N.C. Memorial Hospital", image_url: "UNC-Hospital-Logo"), Hospital(id: 3, hospital_name: "Wake Forest Baptist Medical Center", image_url: "WakeForest-Hospital-Logo"), Hospital(id: 4, hospital_name: "Cedars Sinai Medical Center", image_url: "Cedars-Hospital-Logo"), Hospital(id: 5, hospital_name: "Children's Hospital Los Angeles", image_url: "CHLA-Hospital-Logo"), Hospital(id: 6, hospital_name: "Northwestern Memorial Hospital", image_url: "Northwestern-Hospital-Logo"), Hospital(id: 7, hospital_name: "UChicago Medicine", image_url: "UChicago-Hospital-Logo"), Hospital(id: 8, hospital_name: "Mayo Clinic", image_url: "MayoClinic-Hospital-Logo"), Hospital(id: 9, hospital_name: "Massachusetts General Hospital", image_url: "MassGen-Hospital-Logo", Hospital(id: 10, hospital_name: "Johns Hopkins Hospital", image_url: "Hopkins-Hospital-Logo"))]

}

func formatHospitals() -> [String: [Hospital]]{
   return ["Other Hospitals": [Hospital(id: 1, hospital_name: "Duke University Hospital", image_url: "Duke-Hospital-Logo"),
                                Hospital(id: 2, hospital_name: "UNC", image_url: "UNC-Hospital-Logo")],
            "Hospitals Near You": [Hospital(id: 3, hospital_name: "Wake Forest", image_url: "WakeForest-Hospital-Logo")]]
}

//func callAPI() {
//    let str = "empty"
//    guard let url = URL(string: "https://ysw49bfeec.execute-api.us-east-1.amazonaws.com/Alpha/gethospitals")
//    else {
//        return
//    }
//
//    let task: Void = URLSession.shared.dataTask(with: url) {
//        data, response, error in
//        if let data = data, let string = String(data: data, encoding: .utf8) {
//                self.lambdaHello = string
//            print(str)
//
//        } else {
//            return
//        }
//    }.resume()
//}
//}
