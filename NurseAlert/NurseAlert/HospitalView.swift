//
//  HospitalView.swift
//  NurseAlert
//
//  Created by Tomas Esber on 9/9/23.
//

import SwiftUI

struct HospitalView: View {
    var body: some View {
        List(getHospital(), id: \.self) { hospital in
            HStack {
                Image(hospital.image_url)
                    .resizable()
                    .frame(width: 30, height: 20)
                Text(hospital.hospital_name)
            }
        }
    }
}

struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}
