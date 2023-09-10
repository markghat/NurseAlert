import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @State private var chatMessages: [String] = []
    var hospital_id: Int
    var room_id: Int
    
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
                        sendToLLM(textMessage: messageText, hospital_id: hospital_id, room_id: room_id)
                        messageText = ""
                        chatMessages.append("Your caretaker has been notified of your request!")
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
        ChatView(hospital_id: 1, room_id: 1)
    }
}
