import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                //MARK: - HEADER
                Spacer()
                
                Image("Duke-Hospital-Logo")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                //MARK: - CENTER
                Text("Welcome")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
                //MARK: - FOOTER
                Spacer()

                NavigationLink(destination: HospitalView()) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    Text("Contact Nurse")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
