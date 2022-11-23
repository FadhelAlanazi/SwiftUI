//
//  ContentView.swift
//  26-RotationGesture
//
//  Created by Fadhel Alanazi on 25/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var degree = 0.0
    var body: some View {
        VStack {
          Image(systemName: "star.fill")
                .font(.system(size: 200))
                .foregroundColor(.green)
                .rotationEffect(Angle.degrees(degree))
                .gesture(
                    RotationGesture()
                        .onChanged{ Angle in
                            degree = Angle.degrees
                        }
                )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
