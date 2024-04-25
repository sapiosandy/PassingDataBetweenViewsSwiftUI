//
//  ContentView.swift
//  PassingDataBetweenViewsSwiftUI
//
//  Created by Sandra Gomez on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    var body: some View {
        NavigationStack {
            VStack (spacing: 25) {
                TextField("Type something here", text: $message)
                
                NavigationLink {
                    SameFileView(passedData: message)
                } label : {
                    Text("Go to structure in same file ")
                }
            }
        }
    }
}

struct SameFileView: View {
    var passedData: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.green)
            Text ("This is what you typed: \(passedData)")
        }
    }
}

#Preview {
    ContentView()
}
