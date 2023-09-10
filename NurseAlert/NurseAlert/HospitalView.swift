//
//  HospitalView.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

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

struct HospitalView: View{
    
    var titles = ["Other Hospitals" : ["Cedars Sinai", "Rush Hospital", "Mayo Clinic", "Johns Hopkins", "UCLA"], "Hospitals Near You" : ["Duke University", "UNC", "Wake Forest", "NC State"]]
    
    
    
    var body: some View {
        List (){
            ForEach(formatHospitals().keys.sorted(by: <), id: \.self){ key in
                Section(header: Text(key).foregroundColor(Color.black)) {
                    VStack(alignment: .leading, spacing: 0){
                        ForEach(formatHospitals()[key]!, id: \.self) { hospital in
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
                            Rectangle()
                                .frame(height: 2) // Adjust the height as needed
                                .foregroundColor(Color.black)
                        }//: LOOP
                    }//: VSTACK
                    .overlay(
                        RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color.black, lineWidth: 2)
                    )
                    .foregroundColor(Color(uiColor: .tertiaryLabel))
                }//: SECTION
                .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }//: LOOP
        }//: LIST
        .listStyle(InsetListStyle())
    }
}


struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}

