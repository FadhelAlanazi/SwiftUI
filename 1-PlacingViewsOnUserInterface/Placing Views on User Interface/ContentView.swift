//
//  ContentView.swift
//  Placing Views on User Interface
//
//  Created by Fadhel Alanazi on 08/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // using padding
        // padding by default 16 point spacing
        VStack{
            VStack{
                Text("padding, top!")
                .padding(.top,20)
                .background(Color.yellow)

                Text("padding, bottom!")
                .padding(.bottom)
                .background(Color.yellow)
            
                Text("padding, leading!")
                .padding(.leading)
                .background(Color.yellow)
                
                Text("padding, trailing!")
                .padding(.trailing)
                .background(Color.yellow)
                
            }
            //without padding
            VStack{
                
                Text("No padding!")
                .background(Color.yellow)
               
                Text("No padding!")
                .background(Color.yellow)
            
                Text("No padding!")
                .background(Color.yellow)
                
                Text("No padding!")
                .background(Color.yellow)
            }
            // spacing
            VStack(spacing: 30){
                Text("Top text view!")
                    .background(Color.yellow)
                Text("mid text view!")
                    .background(Color.yellow)
                Text("bottom text view!")
                    .background(Color.yellow)
            }
            //alignment view
            VStack(alignment: .leading,spacing: 20){
                Text("hi")
                    .background(Color.green)
                Text("hello")
                    .background(Color.green)
            }
            // HStack has five different align views
            //.top
            //.bottom
            //.center
            //.firstTextBaseline
            //lastTextBaseline
            HStack(alignment: .top){
               Text("hello HS")
                    .font(.system(size: 40))
                .background(Color.yellow)
                Text("hello HS")
                 .background(Color.yellow)
                Text("hello HS")
                 .background(Color.yellow)
                 .font(.largeTitle)
            }
            //spacer
            HStack(alignment: .top){
               Text("left")
                .background(Color.yellow)
                Spacer()
                Text("right")
                 .background(Color.yellow)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
