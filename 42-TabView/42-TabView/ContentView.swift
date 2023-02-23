//
//  ContentView.swift
//  42-TabView
//
//  Created by Fadhel Alanazi on 03/08/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Text("one")
                    .tabItem {
                        Image(systemName: "hare")
                        Text("tab1")
                    }
                Text("two")
                    .tabItem {
                        Image(systemName: "heart")
                        Text("tab2")
                    }
                Text("three")
                    .tabItem {
                        Image(systemName: "book")
                        Text("tab3")
                    }
                Text("four")
                    .tabItem {
                        Label("tab4", systemImage: "folder")
                    }
                Text("five")
                    .tabItem {
                        Label("tab5", systemImage: "person")
                    }
                Text("six")
                    .tabItem {
                        Label("tab6", systemImage: "moon")
                    }
            }.accentColor(.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
