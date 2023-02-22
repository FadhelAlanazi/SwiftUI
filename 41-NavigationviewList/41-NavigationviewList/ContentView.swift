//
//  ContentView.swift
//  41-NavigationviewList
//
//  Created by Fadhel Alanazi on 02/08/1444 AH.
//

import SwiftUI

struct Books: Identifiable {
    var id: UUID = UUID()
    var name: String
    var summary: String
}

struct ContentView: View {
    var books: [Books] = [
        Books(name: "SwiftUI", summary: "Build an iOS Apps easily"),
        Books(name: "C++ Modern", summary: "Absolute for beginners"),
        Books(name: "Pro Git", summary: "version control systems"),
    ]
    var body: some View {
        VStack {
            NavigationView {
                List(books) { item in
                     NavigationLink(destination: BookView(bookInfo: item)) {
                         Text("\(item.name)")
                        }
                }
                .navigationTitle("Books")
                .navigationBarTitleDisplayMode(.large)
            }
        }
        .padding()
    }
}

struct BookView: View {
    var bookInfo: Books
    var body: some View{
        HStack{
            Spacer()
            VStack{
                Spacer()
                Text("the book name \(bookInfo.name)")
                    .font(.largeTitle)
                Text("the book summary \(bookInfo.summary)")
                    .font(.body)
                Spacer()
            }
            .padding()
            Spacer()
        }.background(Color.brown)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
