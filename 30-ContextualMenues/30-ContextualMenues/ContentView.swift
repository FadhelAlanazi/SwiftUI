//
//  ContentView.swift
//  30-ContextualMenues
//
//  Created by Fadhel Alanazi on 29/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var color = Color.gray
    var body: some View {
        VStack {
           Rectangle()
                .foregroundColor(color)
            Text("pick a color")
                .padding()
                .contextMenu(menuItems: {
                    Button("Red",action: {
                        color = Color.red
                    })
                    Button("Purple", action: makePurple)
                    Button("Purple", action: makePurple)
                    Button("Purple", action: makePurple)

                })
                
        }
        .padding()
    }
    
    func makePurple(){
        color = Color.purple
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
