//
//  SeparateFile.swift
//  40-NavigationViewObservable
//
//  Created by Fadhel Alanazi on 01/08/1444 AH.
//

import SwiftUI

struct SeparateFileView: View{
    @State var passedData = ""
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Spacer()
                TextField("Text here", text: $passedData)
                Spacer()
            }
            Spacer()
        }.background(Color.cyan)
    }
}

struct SeparateFileView_Previews: PreviewProvider {
    static var previews: some View {
        SeparateFileView(passedData: "")
    }
}
