//
//  ContentView.swift
//  12-Pickers
//
//  Created by Fadhel Alanazi on 06/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var choice = ""
    @State var choice2 = 0.0
    var body: some View {
        
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("1").tag("one")
                Text("2").tag("two")
                Text("3").tag("three")
                Text("4").tag("four")
                Text("5").tag("five")
            }.pickerStyle(.inline)
             .padding()
            Text("you chose \(choice)")
            
                .padding()
            Picker(selection: $choice2, label: Text("Picker")) {
                Text("Cat").tag(1.7)
                Text("Dog").tag(2.06)
                Text("Bird").tag(3.41)
                Text("Lizard").tag(4.55)
                Text("Hamster").tag(5.38)
            }.pickerStyle(.segmented)
                .padding()
            Text("\(choice2)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
