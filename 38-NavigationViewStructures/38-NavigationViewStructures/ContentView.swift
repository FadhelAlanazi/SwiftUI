//
//  ContentView.swift
//  38-NavigationViewStructures
//
//  Created by Fadhel Alanazi on 27/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    var body: some View {
        NavigationView{
            
            VStack(spacing: 20) {
                TextField("type text here", text: $message)
                    .border(.yellow)
                    
                NavigationLink(destination: FileView(choice: $message)) {
                    Text("Heads Link")
                }
                
                NavigationLink(destination: SeparateFile(passedData: $message)){
                    Text("Tails Link")
                }
                .navigationTitle("Flip a coin")
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

struct FileView: View {
    @Binding var choice: String
    var body: some View{
        HStack{
            Spacer()
            VStack{
                Spacer()
                TextField("Type here", text: $choice)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()
        } .background(Color.brown)
    }
}
