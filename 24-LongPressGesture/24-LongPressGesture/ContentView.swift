//
//  ContentView.swift
//  24-LongPressGesture
//
//  Created by Fadhel Alanazi on 25/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var message = ""
    var body: some View {
        VStack {
            Text(message)
            
            // Simplest .onlongPressGesture
            Rectangle()
                   .frame(width: 150,height: 150)
                   .foregroundColor(.green)
                   .onLongPressGesture {
                       print("pressing the Rectangle")
                   }
            
            // .onlongPressGesture with minimumDuration & maximumDistance
            Rectangle()
                   .frame(width: 150,height: 150)
                   .foregroundColor(.blue)
                   .onLongPressGesture(minimumDuration: 5,maximumDistance: 3) {
                       print("pressing the Rectangle")
                   }
            
            //if you want to do something while user is pressing
         Rectangle()
                .frame(width: 150,height: 150)
                .foregroundColor(.yellow)
                .onLongPressGesture(minimumDuration: 2,maximumDistance:2,pressing: {stillPressed in
                    counter += 1
                    print(stillPressed)
                    message = "long press is in progress \(stillPressed)"
                }) {
                    print("finished long pressed")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
