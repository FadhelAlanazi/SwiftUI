//
//  ContentView.swift
//  5-Working-With-Images
//
//  Created by Fadhel Alanazi on 14/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Adding geometric shapes
        HStack{
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.red,.green,.yellow,.cyan]), startPoint: .topLeading, endPoint: .bottomTrailing))
         Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.red,.yellow,.blue,.green]), center: .center))
            
            Capsule().fill(RadialGradient(gradient: Gradient(colors: [.green,.yellow,.red,.brown,.blue]), center: .center, startRadius: 30, endRadius: 150))
            Ellipse().fill(AngularGradient(gradient: Gradient(colors: [.brown,.cyan,.orange,.yellow]), center: .center))
        }
        // adding system images
        HStack(){
            Image(systemName: "tortoise")
                .padding()
            Image(systemName: "tortoise.fill")
                .font(.largeTitle)
                .padding()
            Image(systemName: "tortoise")
                .font(.custom("", size: 50))
                .padding()
        }
        // adding images with clips (geometric shapes) & opacity
        VStack{
            Image(systemName: "snow")
                .resizable()
                .opacity(0.15)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)

            //shadow and border & clipshape circle
            Image("11")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height:  150)
                .clipShape(Circle())
                .shadow(color: .blue, radius: 20, x: 0, y: 0)
            //border overlay
                .overlay(Circle().stroke(.green,lineWidth: 3))
            
            //  border & clipshape Rectangle
            Image("11")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .overlay(Rectangle().stroke(Color.blue,lineWidth: 10))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
