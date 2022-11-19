//
//  ContentView.swift
//  11-TextEditor
//
//  Created by Fadhel Alanazi on 04/03/1444 AH.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @FocusState var dismissKeyboard: Bool
    @State var message = "Alma"
    var body: some View {
        VStack {
            TextEditor(text: $message)
                .focused($dismissKeyboard)
                .frame(width: 200,height: 200,alignment: .center)
                .padding()
            TextField("", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Hide Keyboard"){
                dismissKeyboard = false
            }
            .padding()
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
