//
//  ContentView.swift
//  19-Sliders
//
//  Created by Fadhel Alanazi on 12/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderVal:Double = 0.5
    @State var sliderVal2:Double = 0.0
    @State var sliderVal3:Double = 0.0
    @State var sliderVal4:Double = 0.0

    var body: some View {
        VStack(spacing: 20) {
            
            //basic slider default range 0 to 1
            Slider(value: $sliderVal){_ in
                print(sliderVal)
            }
            Text("slider value: \(sliderVal)")
            
            //range in slider
            Slider(value: $sliderVal2, in: 1...50)
            Text("slider value: \(sliderVal2)")
            
            //step increament a slider
            Slider(value: $sliderVal3,in: 1...30,step: 2)
            Text("slider value: \(sliderVal3)")
            
            //displaying minimum and maximum labels
            Slider(value: $sliderVal4,in: 1...50,step: 2){
              Text("Slider")
            }minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("50")
            }
            Text("slider value: \(sliderVal4)")

        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
