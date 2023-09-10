//
//  NurseAlertApp.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

import SwiftUI

@main
struct NurseAlertApp: App {
    @StateObject var dataLoader = DataLoader(apiClient: DataLoaderAPIService())
    var body: some Scene {
        WindowGroup {
            HospitalViewV2()
                .environmentObject(dataLoader)
        }
    }
}
