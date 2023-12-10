/*
 3: SHAPES
 1. Change the color of the circle to red.
 2. Change the color of the circle's border to bluek and add a dash to the border.
 3. Change the circle to a half circle.
 -
 */

import SwiftUI

struct __Shapes: View {
    var body: some View {
        VStack{
            Circle()
                .trim(from: 0.25, to: 0.75) // 3
                .fill(Color.red) // 1
                .stroke(.blue, style: StrokeStyle(lineWidth: 20.0, lineCap: .round, dash: [50])) // 2
                .padding()
            
            Circle()
            //fill a full circle with 50% blue
                .trim(from: 0.0, to: 0.5)
                .fill(Color.blue)
                .padding()
            //now make the top half red
            
            Circle()
                .trim(from: 0.0, to: 0.5)
                .fill(Color.red)
                .rotationEffect(.degrees(180))
           
                .padding()
            //connect the two halves
            
            Circle()
                .trim(from: 0.0, to: 0.5)
                .fill(Color.blue)
                .overlay(
                    Circle()
                        .trim(from: 0.0, to: 0.5)
                        .fill(Color.red)
                        .rotationEffect(.degrees(180))
                )
                .padding()
            
            Capsule()
                .trim(from: 0.0, to: 0.5)
                .fill(Color.red)
                .overlay(
                    Capsule()
                        .trim(from: 0.0, to: 0.5)
                        .fill(Color.blue)
                        .rotationEffect(.degrees(180))
                )
                .padding()
            
        }
    }
}

#Preview {
    __Shapes()
}
