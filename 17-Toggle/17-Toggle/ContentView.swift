//
//  ContentView.swift
//  17-Toggle
//
//  Created by Fadhel Alanazi on 12/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var settingValue = true
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200,height: 200)
                .foregroundColor(settingValue ? .blue : .green)
            Toggle(isOn: $settingValue, label: {
                if settingValue == true{
                    Text("Blue")
                }else{
                    Text("Green")
                }
                
            }).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
