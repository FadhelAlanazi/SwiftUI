//
//  ContentView.swift
//  4-WorkingWithText
//
//  Created by Fadhel Alanazi on 13/02/1444 AH.
//
// Text view can display strings of any length
//SwiftUI  lets you define:
// 1) Line Limits
// 2) Truncations

import SwiftUI
struct ContentView: View {
    var myString: String = "Fadhe"
    let myAge = 30

    var body: some View {
        VStack{
            if myString == "Fadhel"{
                Text(myString)
                    .background(Color.yellow)
                .padding()
            }else{
                Text("myString")
                .padding()
                .background(Color.yellow)
            }
            Text("myAge is \(myAge)")
                .padding()
                .background(Color.orange)
        }
        VStack{
            Text("Hello this is me where are you. Created by Fadhel Alanazi on 13/02/1444 AH.ext view can display strings of any lengthSwiftUI  lets you define: Line Limits - Truncations")
                .lineLimit(3)
                .truncationMode(.head)
                .font(.system(size: 20, weight: .bold))
                .multilineTextAlignment(.leading)
                .padding()
                .background(Color.cyan)
                .foregroundColor(.white)
                
            //Label View Text & systemImage
            Label("Ahmad", systemImage: "person")
                .padding()
                .font(.system(size: 50))
                .foregroundColor(.cyan)
            
            //Label View Text & Image
            Label("Label2", image: "6")
                .font(.title)
                .opacity(0.25)
            
            //customize the appearance of text and/or image
            Label {
                Text("user1")
                    .font(.largeTitle)
                    .padding()
            } icon: {
                //Image view with border
                Image(systemName: "person.fill")
                    .padding()
                    .border(Color.blue, width: 4)

            }

           //Modifying text and image in a label view
            VStack{
                Label("text and icon", systemImage: "hare")
                    .font(.largeTitle)
                
                Label("text only", systemImage: "hare")
                    .font(.largeTitle)
                    .labelStyle(.titleOnly)
                
                Label("icon only", systemImage: "hare")
                    .font(.largeTitle)
                    .labelStyle(.iconOnly)
            }
            //Text view with border
            VStack{
                Text("hi user")
                    .padding()
                    .border(Color.red, width: 3)
                    .font(.system(size: 30))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
