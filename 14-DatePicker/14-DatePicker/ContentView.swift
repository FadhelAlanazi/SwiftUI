//
//  ContentView.swift
//  14-DatePicker
//
//  Created by Fadhel Alanazi on 06/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var myDate = Date.now
    @State var myDate2 = Date.now

    var body: some View {
        VStack {
            DatePicker(selection: $myDate) {
                Text("Date")
                    .font(.title2)
            }.datePickerStyle(.automatic)
            Text("your date is \(myDate)")
                .padding()
            // only date
            DatePicker(selection: $myDate, displayedComponents: [.date]){
                Text("Date")
            }
            Text("\(myDate)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
