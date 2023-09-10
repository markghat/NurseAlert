import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @State private var chatMessages: [String] = []

    var body: some View {
        VStack {
            List(chatMessages, id: \.self) { message in
                Text(message)
            }
            .padding()

            HStack {
                TextField("Type your message...", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                Button(action: {
                    if !messageText.isEmpty {
                        chatMessages.append(messageText)
                        messageText = ""
                    }
                }) {
                    Text("Send")
                        .foregroundColor(.blue)
                }
                .padding()
            }
        }
        .padding()
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
