//
//  ContentView.swift
//  37-NavigationView
//
//  Created by Fadhel Alanazi on 22/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var flag = true
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    Toggle(isOn: $flag, label: {
                        Text("Toggle display mode")
                    })
                    NavigationLink(destination: List {
                        Text("Text 1")
                        Text("Text 2")
                        Text("Text 3")
                        Text("Text 4")
                        
                    }) {
                        Image(systemName: "hare")
                            .padding()

                    }
                    .navigationTitle("Navigation Title")
                    .navigationBarTitleDisplayMode(flag ? .large : .inline)
                   // .navigationBarHidden(true)
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
