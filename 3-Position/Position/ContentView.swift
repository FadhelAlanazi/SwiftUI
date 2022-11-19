//
//  ContentView.swift
//  Position
//
//  Created by Fadhel Alanazi on 11/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("First View")
                .background(Color.blue)
                .foregroundColor(.white)
                
            Text("Second View")
                .background(Color.yellow)
               
        }
        .position(x: 10, y: 25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
