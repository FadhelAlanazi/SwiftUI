//
//  ContentView.swift
//  21-MenuSimple
//
//  Created by Fadhel Alanazi on 16/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = "hi"
    
    var body: some View {
        VStack {
            Text(message)
                .padding()
            
            // menu with calling functions
            Menu("Options"){
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete", action: deleteFile)
                
            }
            //menu without calling functions
            Menu("Options 2"){
                Button("one", action: {
                    message = "open chosen"
                })
                Button("two", action: {
                    message = "find chosen"
                })
                Button("three", action: {
                    message = "delete chosen"
                })
            }
            //Formatting Titles on the Menu and Buttons
            Menu {
                Button("open", action: {
                    message = "open"
                })
                Button("find", action: {
                    message = "find"
                })
            } label: {
                Text("Options 3")
                    .font(.title2)
                    .foregroundColor(.brown)
            }
            
            //Formatting Titles on the Menu and Buttons Label
            Menu {
                Button("open", action: {
                    message = "open"
                })
                Button("find", action: {
                    message = "find"
                })
            } label: {
                Label("Options 4", systemImage: "pencil.circle")
            }
            
            //Formatting Titles on the Menu and Buttons Text
            Menu {
                Button {
                    message = "Open"
                } label: {
                    Label("Open", systemImage: "book")
                }
                
                Button {
                    message = "Find"
                } label: {
                    Label("Find", systemImage: "person")
                }
                
                Button {
                    message = "Delete"
                } label: {
                    Label("Delete", systemImage: "trash")
                }
            } label: {
                Text("Options 5")
                    .font(.largeTitle)
            }

            
            Spacer()
        }
        .padding()
    }
    func openFile(){
        message = "open chosen"
    }
    func findFile(){
        message = "find chosen"
    }
    func deleteFile(){
        message = "delete chosen"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
