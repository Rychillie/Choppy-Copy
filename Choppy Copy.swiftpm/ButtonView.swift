import SwiftUI

struct ButtonView: View {
    var text = "Hello"
    var color = Color.blue
    
    var body: some View {
        Text(text)
            .bold()
            .padding(8)
            .frame(maxWidth: .infinity)
            .background(color)
            .cornerRadius(15)
            .foregroundColor(.white)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
