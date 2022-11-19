//
//  ContentView.swift
//  18-Stepper
//
//  Created by Fadhel Alanazi on 12/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var newValue:Int = 0
    @State var newValue2:Int = 0
    @State var newValue3:Int = 0
    @State var decimalVal:Double = 0.0

    var body: some View {
        VStack {
            //basic stepper
            Stepper(value: $newValue){
                Text("Stepper value:  \(newValue)")
            }.padding()
            
            // stepper in a range
            Stepper(value: $newValue2, in: 1...10){
                Text("Stepper value: \(newValue2)")
            }.padding()
            
            // stepper with increament value
            Stepper(value: $newValue3, in: 1...10, step: 2){
                Text("Stepper value: \(newValue3)")
            }.padding()
            
            //stepper with decimal increament value
            Stepper(value: $decimalVal, in: 1.0...10.0, step: 0.25){
                Text("Stepper value: \(decimalVal)")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
