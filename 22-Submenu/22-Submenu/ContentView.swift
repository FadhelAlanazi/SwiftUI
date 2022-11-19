//
//  ContentView.swift
//  22-Submenu
//
//  Created by Fadhel Alanazi on 21/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    var body: some View {
        VStack {
            Text(message)
                .padding()
            Menu("Select"){
                Button {
                    openFile()
                } label: {
                    Label("Open file", systemImage: "book")
                }

                Button("Find", action: findFile)
                Button("Delete", action: deleteFile)
                Menu("Submenu"){
                    Button("Copy Format", action: copyFormat)
                    Button("Paste Format", action: pasteFormat)
                }

            }
            Spacer()
        }
        .padding()
    }
    func openFile(){
        message = "Open file"
        print(message)
    }
    func findFile(){
        message = "Find file"
        print(message)
    }
    func deleteFile(){
        message = "Delete file"
        print(message)
    }
    func copyFormat(){
        message = "Copy format file"
        print(message)
    }
    func pasteFormat(){
        message = "Paste format file"
        print(message)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
