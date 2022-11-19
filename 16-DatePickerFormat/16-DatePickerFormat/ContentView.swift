//
//  ContentView.swift
//  16-DatePickerFormat
//
//  Created by Fadhel Alanazi on 11/03/1444 AH.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var myDate = Date.now
    let formatter = DateFormatter()
    var body: some View {
        VStack {
            Text("Chosen date = \(formatter.string(from: myDate))")
        DatePicker(selection: $myDate, label: {
            Text("Date")
        })
        .onAppear(){
            formatter.dateStyle = .medium
            formatter.timeStyle = .medium
        }
        .datePickerStyle(.compact)
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
