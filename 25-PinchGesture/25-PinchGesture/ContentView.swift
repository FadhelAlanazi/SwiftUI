//
//  ContentView.swift
//  25-PinchGesture
//
//  Created by Fadhel Alanazi on 25/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var tempValue: CGFloat = 0
    @State var finalValue: CGFloat = 1
    var body: some View {
        VStack {
          Image(systemName: "star.fill")
                .font(.system(size: 100))
                .foregroundColor(.green)
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    MagnificationGesture()
                    .onChanged { amount in
                    tempValue = amount - 1
                    } .onEnded{ amount in
                        print(amount)
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
