import SwiftUI
struct HospitalView: View {
    var titles = ["Other Hospitals" : ["Cedars Sinai", "Rush Hospital", "Mayo Clinic", "Johns Hopkins", "UCLA"], "Hospitals Near You" : ["Duke University", "UNC", "Wake Forest", "NC State"]]

    var body: some View {
        NavigationView { // Wrap the HospitalView in a NavigationView
            List() {
                ForEach(formatHospitals().keys.sorted(by: <), id: \.self) { key in
                    Section(header: Text(key).foregroundColor(Color.black)) {
                        VStack(alignment: .leading, spacing: 10){ // Adjust the spacing as needed
                            ForEach(formatHospitals()[key]!, id: \.self) { hospital in
                                NavigationLink(destination: ChatView()) {
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
                                }
                                .frame(maxWidth: .infinity, alignment: .leading) // Fill the entire row
                                .background(Color.clear) // Clear background
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color.black, lineWidth: 2)
                                )
                                .foregroundColor(Color(uiColor: .tertiaryLabel))
                            }//: LOOP
                        }//: VSTACK
                    }//: SECTION
                    .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }//: LOOP
            }//: LIST
            .listStyle(InsetListStyle())
        }
    }
}
