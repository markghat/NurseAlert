import SwiftUI

//struct HospitalView: View {
    //var body: some View {
        //List(getHospital(), id: \.self) { hospital in
            //HStack {
                //Image(hospital.image_url)
                    //.resizable()
                    //.frame(width: 30, height: 20)
                //Text(hospital.hospital_name).fontWeight(.semibold)
            //}
           // .padding(.vertical, 20)
       // }
    //}
//}

struct HospitalView: View {
//    @State private var hospitals: [Hospital]?
//    @State private var txt: String?
    var hospitals = getHospital() // Assuming you have a function to retrieve hospitals
    
    var body: some View {
        
        List(hospitals, id: \.self) { hospital in
            NavigationLink(destination: RoomListView()) { // Navigate to ChatView
                HStack{
                    Image(hospital.image_url)
                        .resizable()
                        .frame(width: 30, height: 20)
                    Text(hospital.hospital_name)
                        .foregroundColor(Color.black)
                    Spacer()
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color.black)
                }//: HSTACK
                .padding(20)
                .navigationTitle("Select Hospital")
                .fontDesign(.rounded)
            }
            .buttonStyle(PlainButtonStyle()) // Remove button styling
            .frame(maxWidth: .infinity, alignment: .leading) // Fill the entire row
            .background(Color.clear) // Clear background
            .overlay(
                RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color.black, lineWidth: 2)
            )
            .foregroundColor(Color(uiColor: .tertiaryLabel))
        }//: LIST
        .listStyle(InsetListStyle())
//        .onAppear { getHospitals() }
    }
    
//    func getHospitals() {
//        guard let url = URL(string: "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getHospitals")
//        else {
//            return
//        }
//        let request = NSMutableURLRequest(url: url as URL)
//            request.httpMethod = "GET"
//            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        var jsonString = "emptyString"
//        let task: Void = URLSession.shared.dataTask(with: request as URLRequest) {
//            data, response, error in
//            if let data = data, let string = String(data: data, encoding: .utf8) {
////                self.hospitals = toHospitalList(jsonString: string)
//                self.txt = string
//
//            } else {
//                return
//            }
//        }.resume()
//    }
//    func toHospitalList(jsonString: String) -> [Hospital] {
//        let jsonDecoder = JSONDecoder()
//        let jsonData = jsonString.data(using: .utf8)
//        do {
//            let hospitals = try jsonDecoder.decode([Hospital].self, from: jsonData!)
//            return hospitals
//        } catch {
//            return []
//        }
//    }
}

//func toHospitalList(jsonString: String) -> [Hospital] {
//    let jsonDecoder = JSONDecoder()
//    let jsonData = jsonString.data(using: .utf8)
//    do {
//        let hospitals = try jsonDecoder.decode([Hospital].self, from: jsonData!)
//        return hospitals
//    } catch {
//        return []
//    }
//}

//func getHospitals() -> [Hospital] {
//    guard let url = URL(string: "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getHospitals")
//    else {
//        return []
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
//    print(jsonString)
//    return toHospitalList(jsonString: jsonString)
//}
//
//func toHospitalList(jsonString: String) -> [Hospital] {
//    let jsonDecoder = JSONDecoder()
//    let jsonData = jsonString.data(using: .utf8)
//    do {
//        let hospitals = try jsonDecoder.decode([Hospital].self, from: jsonData!)
//        return hospitals
//    } catch {
//        return []
//    }
//}

struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}

