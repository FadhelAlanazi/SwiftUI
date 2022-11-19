//
//  ContentView.swift
//  10-DismissKeyboard
//
//  Created by Fadhel Alanazi on 29/02/1444 AH.
//
//Notice the two @available(iOS 15.0, *) above each structure also in _0_DismissKeyboardApp file.

import SwiftUI

//this checks to make sure the project only runs on iOS 15 or greater.
@available(iOS 15.0, *)
struct ContentView: View {
    @State var message = ""
    var body: some View {
        VStack(spacing: 10) {
           TextField("add name", text: $message)
                .textFieldStyle(.roundedBorder)
                .submitLabel(.return)
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
