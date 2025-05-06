//
//  ContentView.swift
//  hello-world
//
//  Created by Biwas Bhandari on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("AppleMedia")
                .font(.title)
                .padding()
                .bold()
                .foregroundColor(.blue)
        }
        
        TextField("What's on your mind?", text: .constant(""))
            .foregroundColor(.black)
            .padding()
        Spacer()
        
    }
   
    
}

#Preview {
    ContentView()
}
