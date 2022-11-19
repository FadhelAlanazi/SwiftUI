//
//  ContentView.swift
//  20-Linkes&Menue
//
//  Created by Fadhel Alanazi on 13/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Menu("Action"){
                Button("Duplicate",action: duplicate)
                Button("Rename",action: rename)
                Button("Delete",action: delete)
                Menu("Copy"){
                    Button("Copy",action: duplicate)
                    Button("Copy Formatted",action: rename)
                    Button("Copy Library Pathath",action: delete)
                    Link(destination: URL(string: "https://satr.codes/")!){
                        Text("Satar Platform")
                    }
                }
            }
            
            Link(destination: URL(string: "https://satr.codes/")!) {
                Text("click here")
            }
        }
    }
    
    func duplicate(){
        print("duplicate")
    }
    
    func rename(){
        print("rename")
    }
    
    func delete(){
        print("delete")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
