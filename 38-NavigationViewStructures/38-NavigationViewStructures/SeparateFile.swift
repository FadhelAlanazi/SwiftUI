//
//  SeparateFile.swift
//  38-NavigationViewStructures
//
//  Created by Fadhel Alanazi on 27/07/1444 AH.
//

import Foundation
import SwiftUI

struct SeparateFile: View {
    @Binding var passedData: String
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Spacer()
                TextField("Type here", text: $passedData)
                Image(systemName: "hare")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct SeparateFile_Previews: PreviewProvider {
    static var previews: some View {
        SeparateFile(passedData: .constant(""))
    }
}
