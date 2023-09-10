//
//  HospitalViewV2.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/10/23.
//

import SwiftUI

struct HospitalViewV2: View {
    @EnvironmentObject var hospitalsLoader: DataLoader
    
    var body: some View {
        ScrollView {
            switch hospitalsLoader.state {
            case .idle: Color.clear
            case .loading: ProgressView()
            case .failed: Text("Could not load description.")
            case .success(let response):
                ForEach(response, id: \.self) { hospital in
                    Text(hospital.hospital_name)
                }
            }
        }
        .task { await  hospitalsLoader.loadHospitalData(queryId: "https://97lvc2d422.execute-api.us-east-1.amazonaws.com/test/getHospitals") }
    }
}

struct HospitalViewV2_Previews: PreviewProvider {
    static var previews: some View {
        HospitalViewV2()
            .environmentObject(DataLoader(apiClient: MockDataLoaderAPIService()))
    }
}
