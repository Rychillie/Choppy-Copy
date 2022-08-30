import SwiftUI

struct ContentView: View {
    
    @State var userText = ""
    @State var textStyle = 1
    
    var body: some View {
        VStack {
            VStack(spacing: 17) {
                Spacer()
                
                if textStyle == 1 {
                    Text(userText.uppercased())
                        .font(.largeTitle)
                }
                if textStyle == 2 {
                    Text(userText.capitalized)
                        .font(.largeTitle)
                }
                if textStyle == 3 {
                    Text(userText.lowercased())
                        .font(.largeTitle)
                }
                
                Spacer()
                
                Button(action: {
                    if textStyle == 1 {
                        UIPasteboard.general.string = userText.uppercased()
                    }
                    if textStyle == 2 {
                        UIPasteboard.general.string = userText.capitalized
                    }
                    if textStyle == 3 {
                        UIPasteboard.general.string = userText.lowercased()
                    }
                }) {
                    ButtonView(text: "Copy", color: .green)
                }
                
                Picker(selection: $textStyle, label: Text("Picker: ")) {
                    Text("CAPS").tag(1)
                    Text("First Letter").tag(2)
                    Text("lowercase").tag(3)
                }
                .pickerStyle(.segmented)
                
                TextField("Type here...", text: $userText)
            }
            .padding()
        }
    }
}
