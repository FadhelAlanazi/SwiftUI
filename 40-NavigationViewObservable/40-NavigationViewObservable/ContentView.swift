//
//  ContentView.swift
//  40-NavigationViewObservable
//
//  Created by Fadhel Alanazi on 01/08/1444 AH.
//

import SwiftUI

class ShareString: ObservableObject{
    @Published var message = ""
}

struct ContentView: View {
    @StateObject var showMe = ShareString()
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                TextField("type here", text: $showMe.message)
                NavigationLink(destination: FileView()){
                    Text("link to FileView")
                }
                NavigationLink(destination: SeparateFileView(passedData: showMe.message)) {
                    Text("link to SeparateFile")
                }
                .navigationTitle("Sharing Data")
            }
            
        }.environmentObject(showMe)
         .padding()
    }
}

struct FileView: View{
    @EnvironmentObject var choice: ShareString
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Spacer()
                TextField("Text here", text: $choice.message)
                Spacer()
            }
            Spacer()
        }.background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
