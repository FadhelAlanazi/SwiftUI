//
//  ContentView.swift
//  23-TapGesture
//
//  Created by Fadhel Alanazi on 22/03/1444 AH.
//
// different types of touch gestures that an iOS app can detect:
// Tap - Pinch - Rotation - Pan - Swipe - Long press

import SwiftUI

struct ContentView: View {
    @State var changeMe = false
    @State var changeMe2 = false
    @State var counter = 0
    var body: some View {
        VStack {
       Text("number of touches:\(counter)")
            Rectangle()
                .frame(width: 275,height: 125)
                .foregroundColor(changeMe ? .blue : .red)
                .onTapGesture {
                    changeMe.toggle()
                    counter += 1
                }
            Rectangle()
                .frame(width: 275,height: 125)
                .foregroundColor(changeMe2 ? .blue : .red)
                .onTapGesture(count: 2) {
                    changeMe2.toggle()
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
