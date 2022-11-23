//
//  ContentView.swift
//  28-Alerts-ActionSheets
//
//  Created by Fadhel Alanazi on 28/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    @State var showAlert2 = false
    @State var showAlert3 = false

    var body: some View {
        VStack {
            //alert display one button
            Button("Show Alert"){
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Alert"), message: Text("Hello you logged in"), dismissButton: .default(Text("ok")))
            }
            
            //alert display two buttons
            Button("Show Primary & Secondary Alert"){
                showAlert3.toggle()
            }
            .alert(isPresented: $showAlert3) {
                Alert(title: Text("Alert"), message: Text("Hello you logged in"),
                      primaryButton: .default(Text("Default")), secondaryButton: .cancel(Text("Cancel")))
            }
            .padding()
            //alert display actionsheet with one or more button
            Button("Alert"){
                showAlert2.toggle()
            }
            .actionSheet(isPresented: $showAlert2) {
                ActionSheet(title: Text("Alert"),message: Text("action alert"),buttons: [.default(Text("ok")),.destructive(Text("no")),.cancel(Text("cancel"))])
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
