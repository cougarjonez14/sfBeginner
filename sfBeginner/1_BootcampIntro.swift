// 1. Bootcamp 1

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(.red)
                .bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
