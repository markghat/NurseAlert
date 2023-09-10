//
//  RoomListView.swift
//  NurseAlert
//
//  Created by Monty Truitt on 9/9/23.
//

import SwiftUI

struct NurseView: View {
    var hospital_id: Int
    
    var body: some View {
            List(getNurses(hospital_id: 1), id: \.self) { nurse in
                NavigationLink {
                    // TODO: send to LLM chat
                } label: {
                    NurseRow(nurse: nurse)
                }
            }
            .navigationTitle("Nurses")
            .fontDesign(.rounded)
        }
    }

struct NurseRow: View {
    var nurse: Nurse
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text(nurse.nurse_name)
                    .bold()
                    .font(.title2)
                    .hoverEffect(.lift)
                Text(nurse.division)
                    .font(.footnote)
            }
            Spacer()
            Image(systemName: "person.fill")
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
//            Text(String(room.number_employees))
//                .foregroundColor(.gray)
        }
        .frame(height: 60)
    }
}

struct NurseView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListView(hospital_id: 1)
    }
}
