//
//  ContentView.swift
//  6-Buttons-Project
//
//  Created by Fadhel Alanazi on 24/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var colorMe: Bool = false
    var body: some View {
        //spacing inside VStack means all views will be appear not crowded together
        VStack(spacing: 28){
            Rectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250, height: 100)
            
            //plain text button
            Button("plain text button"){
                colorMe.toggle()
            }
            
            //custom button using Text view
            Button {
                colorMe.toggle()
            } label: {
                Text("custom button")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(.red, width: 5)
            }
            
            //custom button using Label view
            Button {
                colorMe.toggle()
            } label: {
                Label("Image button", systemImage: "hare.fill")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding()
                    .border(.blue, width: 6)
            }
            
            //custom button using Image view
            Button {
                colorMe.toggle()
            } label: {
                Image("5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.yellow,lineWidth: 3))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
