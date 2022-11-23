//
//  ContentView.swift
//  29-Alert-ActionSheets-Responsive
//
//  Created by Fadhel Alanazi on 29/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var alert: Bool = false
    @State var alert2 = false
    @State var message = ""
    @State var messageSheet = ""
    var body: some View {
        VStack {
            Button("Alert"){
                alert = true
                message = ""
            }
            .alert(isPresented: $alert) {
                Alert(title: Text("Alert"),message: Text("Thank you for shopping with us"),dismissButton: .default(Text("ok"),action: {
                    message = "finished shopping"
                }))
            }
            
            Text(message)
            .padding(5)
            
            //ActionSheet
            Button("Action Sheet"){
                alert2.toggle()
                messageSheet = ""
            }
            .actionSheet(isPresented: $alert2) {
                ActionSheet(title: Text("Alert"),message: Text("Action Sheet Alert"),buttons: [.default(Text("ok"),action: {
                    messageSheet = "Done"
                }), .destructive(Text("Cancel"),action: {
                    messageSheet = "selection has canceled"
                })
              ])
            }
            .padding(5)
            Text(messageSheet)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
