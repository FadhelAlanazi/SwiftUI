//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Fadhel Alanazi on 22/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
     @State var message: Bool = true
        
    var body: some View {
        VStack {

            Toggle(isOn: $message) {
                Text("Toggle message off/on")
            }
            if message{
                
            Text("here a secret message")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                .padding()
                
                }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
