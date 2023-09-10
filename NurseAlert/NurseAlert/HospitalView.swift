import SwiftUI

struct HospitalView: View {
    @State private var selectedHospital: Hospital?
    @State private var isPopUpVisible = false
    @State private var isNavigatingToRoomList = false
    var hospitals = getHospital() // Assuming you have a function to retrieve hospitals    @State private var isRoomListViewVisible = false
    var body: some View {
        List {
            ForEach(hospitals, id: \.self) { hospital in
                Button(action: {
                    selectedHospital = hospital
                    isPopUpVisible.toggle()
                }) {
                    HStack{
                        Image(hospital.image_url)
                            .resizable()
                            .frame(width: 30, height: 20)
                        Text(hospital.hospital_name)
                            .foregroundColor(Color.black)
                        Spacer()
                        Image(systemName: "arrow.right")
                            .foregroundColor(Color.black)
                    }
                    .padding(20)
                    .background(Color.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10, style: .circular)
                                                .stroke(Color.black, lineWidth: 2)
                                        )
                }
                .buttonStyle(PlainButtonStyle())
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .circular).stroke(Color.black, lineWidth: 2)
                )
                .foregroundColor(Color(uiColor: .tertiaryLabel))
            }
        }
        .listStyle(InsetListStyle())
        .navigationTitle("Select Hospital")
        .fontDesign(.rounded)
        .overlay(
            PopUpView(isVisible: $isPopUpVisible) {
                VStack {
                // Hide the NavigationLink, but keep it functional
                    
                    NavigationLink(destination: RoomListView(hospital_id: 1)) {
                        Text("Patient")
                            .padding()
                    }
                    
                    NavigationLink(destination: RoomListViewNurse()) {
                        Text("Provider")
                            .padding()
                    }
                }
            }
)
    }
}

struct PopUpView<Content: View>: View {
    @Binding var isVisible: Bool
    let content: () -> Content
    
    var body: some View {
        GeometryReader { geometry in
            if isVisible {
                ZStack {
                    Color.black.opacity(0.4)
                        .onTapGesture {
                            isVisible = false
                        }
                    
                    VStack {
                        content()
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding()
                    }
                    .frame(width: geometry.size.width * 1.2, height: 150) // Adjust the size as needed
                    .background(Color.clear)
                    .cornerRadius(10)
                }
                .transition(.opacity)
            }
        }
    }
}


struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}
