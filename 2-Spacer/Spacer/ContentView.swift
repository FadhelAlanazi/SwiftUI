//
//  ContentView.swift
//  Spacer
//
//  Created by Fadhel Alanazi on 11/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Text("Top")
                .font(.system(size: 40))
                .background(Color.yellow)
            Spacer()
            Spacer()
            
            Text("Middle")
                .font(.system(size: 40))
                .background(Color.yellow)
            Spacer()
            Text("Bottom")
                .font(.system(size: 40))
                .background(Color.yellow)
        }
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
