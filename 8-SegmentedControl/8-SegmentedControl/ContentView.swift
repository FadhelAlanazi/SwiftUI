//
//  ContentView.swift
//  8-SegmentedControl
//
//  Created by Fadhel Alanazi on 27/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = "Status Person"
    var body: some View {
      
        VStack(spacing: 20) {
          Text(message)
          Picker("", selection: $message, content: {
              Text("Happy").tag("happy")
              Text("Sad").tag("sad")
              Text("Smiling").tag("smiling")
          }).pickerStyle(SegmentedPickerStyle())
                .onChange(of: message) { value in
                    switch value{
                    case "happy":
                        message = "be happy and enjoy"
                        
                    case "sad":
                        message = "Life can be struggle at times"
                    case "smiling":
                        message = "smile to everyone"
                    default:
                        break
                    }
                }
                .padding(5)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
