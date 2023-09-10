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
    }
}
