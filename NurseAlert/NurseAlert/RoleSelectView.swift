//
//  RoleSelectView.swift
//  NurseAlert
//
//  Created by Mark Andrew Ghattas on 9/10/23.
//

import SwiftUI

struct RoleSelectView: View {
    var body: some View {
        //NavigationLink(destination: RoomView()){
        VStack {
            Spacer()
            Button(action: {
                // Action for the first button
            }) {
                Text("Patient")
                    .fontDesign(.rounded)
                    .font(.system(size: 60))
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(UIColor(hex: "#007AFF")))
                    .foregroundColor(.white)
            }
            
            Button(action: {
                // Action for the second button
            }) {
                Text("Provider")
                    .fontDesign(.rounded)
                    .font(.system(size: 60))
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .background(Color(UIColor(hex: "#22168c")))
                    .foregroundColor(.white)
            }
            Spacer()
        }
    }
}

extension UIColor {
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
        
        struct RoleSelectView_Previews: PreviewProvider {
            static var previews: some View {
                RoleSelectView()
            }
        }
