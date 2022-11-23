//
//  ContentView.swift
//  27-DragGesture
//
//  Created by Fadhel Alanazi on 25/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var circlePosition = CGPoint(x: 50, y: 50)
    @State var circleLabel = ""
    var body: some View {
        VStack {
            Text(circleLabel)
                .font(.largeTitle)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
                .position(circlePosition)
                .gesture(
                DragGesture()
                    .onChanged({ value in
                        circlePosition = value.location
                        circleLabel = "\(Int(value.location.x)),\(Int(value.location.y))"
                    })
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
