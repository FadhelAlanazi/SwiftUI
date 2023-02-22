//
//  ContentView.swift
//  31-Lists
//
//  Created by Fadhel Alanazi on 02/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Simple List
            List {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
            }
            // List using ForEach
            List {
                ForEach(0...10, id: \.self) { item in
                    Text("item:\(item)")
                }
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
