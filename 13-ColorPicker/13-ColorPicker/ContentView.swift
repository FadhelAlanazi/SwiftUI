//
//  ContentView.swift
//  13-ColorPicker
//
//  Created by Fadhel Alanazi on 06/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var color = Color.red
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200,height: 150)
                .foregroundColor(color)
                .clipShape(Circle())
                .padding()
            ColorPicker("Pick a color",selection: $color)
                .padding()
                .font(.title3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
