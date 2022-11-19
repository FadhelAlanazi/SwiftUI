//
//  ContentView.swift
//  7-Segmented Control
//
//  Created by Fadhel Alanazi on 26/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor = Color.gray
    var body: some View {
        VStack(spacing: 10){
         Rectangle()
                .fill(selectedColor)
                
            Picker("", selection: $selectedColor,content: {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
            }).padding()
                .pickerStyle(SegmentedPickerStyle())
    
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
