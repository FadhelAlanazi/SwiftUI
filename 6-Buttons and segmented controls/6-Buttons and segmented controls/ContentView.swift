//
//  ContentView.swift
//  6-Buttons and segmented controls
//
//  Created by Fadhel Alanazi on 18/02/1444 AH.
//
/*to define a button's title you can use:
// 1-Text view
   2-Label view
   3-Image view
*/
import SwiftUI

struct ContentView: View {
    var counter = 0
    @State var colorMe = false
    var body: some View {
        VStack{
            //button with Plain Text
            Button("Click here"){
                print("hi\(counter)")
            }
            .padding()
            
            //button with custom Text view
            Button {
                print("second button")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.mint)
                    .padding()
                    .border(.red, width: 5)
                    
            }
            
            //button with Label view
            Button{
                //code to run
            } label: {
                Label("click me", systemImage: "hare.fill")
                    .font(.largeTitle)
                    .padding()
                    .background(.yellow)
                    .foregroundColor(.blue)
                    
            }
            //button with Image view
            Button {
                //code to run
            } label: {
                Image(systemName: "moon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
