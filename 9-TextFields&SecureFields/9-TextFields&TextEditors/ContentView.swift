//
//  ContentView.swift
//  9-TextFields&TextEditors
//
//  Created by Fadhel Alanazi on 28/02/1444 AH.

// SwiftUI provides three types of views
// 1. Text Field
// 2. Secure Field
// 3. Text Editor

// textContentType modifier define the type of text field expect such as a name , email , address ... autocorrect will reduce the number of irrelevant suggestions when user enter a text.

import SwiftUI

struct ContentView: View {
    @State var message: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(spacing: 10) {
            TextField("Place holder", text: $message)
                .textFieldStyle(.roundedBorder)
                .textContentType(.emailAddress)
            //dismiss virtual keyboard1
                .submitLabel(.done)
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(false)
                .textContentType(.password)
            
            Button("Button"){
                if message != nil || password != nil{
                    print("\(message) and \(password)")
                }
            }.foregroundColor(.yellow)
        }
        .position(x: 200,y: 100)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
