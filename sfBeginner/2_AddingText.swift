/* 2 - ADDING TEXT

 1. .bold and .medium tend to look best
 2. (command + /) to comment out a line of code
 3. .font(.system) is used to customize the font, but it won't resize based on the device
 4. Multiline text alignment is used to align text to the left, center, or right
 5. .baselineOffset is used to adjust the spacing between lines of text. Negative values add a line above too (mess with positive and negative numbers to see what happens)
 6. .frame to set the width and height of a text box. If the text is too long, it will automatically wrap to the next line
 7. .minimumScaleFactor is used to shrink the text if it doesn't fit in the frame. The number is a percentage of the original size. 0.7 means 70% of the original size
 8. To align text to the left, use .leading. To align text to the right, use .trailing
 9. You can use modifiers like .uppercased() to change the text

 */

import SwiftUI

struct __AddingText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) //1
            .font(.body)
            .fontWeight(.medium)
            .bold()
            .kerning(1.5)
            .italic()
            .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.red)
            .strikethrough(true, color: Color.blue)
        
        
        Text("Goodbye, World!")
            .font(.system(size: 40, weight: .bold, design: .serif)) // 3
        
        Text("Hello again world this is my test of using SwiftUI's capabilities to create a really long string of text that will wrap around and look really cool.")
            .multilineTextAlignment(.leading) // 4
            .baselineOffset(60)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) // 6
            .minimumScaleFactor(0.7) // 7
       
        Text("What is up world?".uppercased()) // 9
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading) // 8

    }
}

#Preview {
    __AddingText()
}
