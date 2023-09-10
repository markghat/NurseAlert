import SwiftUI

struct HospitalView: View {
    @State private var selectedHospital: Hospital?
    @State private var isPopUpVisible = false
    @State private var isNavigatingToRoomList = false
    @EnvironmentObject var hospitalsLoader: DataLoader
    var body: some View {
            List {
                switch hospitalsLoader.state {
                case .idle: Color.clear
                case .loading: ProgressView()
                case .failed: Text("Could not load description.")
                case .success(let response):
                ForEach(response, id: \.self) { hospital in
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
        }
        .overlay(
            PopUpView(isVisible: $isPopUpVisible) {
                VStack {
                    // Hide the NavigationLink, but keep it functional
                    
                    NavigationLink(destination: RoomListView(hospital_id: 5)) {
                        Text("Patient")
                            .padding()
                            .frame(maxWidth: .infinity)
                    }
                    
                    NavigationLink(destination: RoomListViewNurse()) {
                        Text("Provider")
                            .padding()
                    }
                }
            }
        )
        .task { await  hospitalsLoader.loadHospitalData(queryId: "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getHospitals") }
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
                    .frame(width: geometry.size.width * 0.8, height: 150) // Adjust the size as needed
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
            .environmentObject(DataLoader(apiClient: MockDataLoaderAPIService()))
    }
}

