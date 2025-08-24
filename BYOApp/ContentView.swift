//
//  ContentView.swift
//  BYOApp
//
//  Created by Aman Maurya on 18/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                NavigationLink(destination: BuildHomeScreen()) {
                    Text("Build Home")
                }
                
                
                Text("Add Screen")
                Text("Link Screens")
                Text("See Preview")
            }
            .padding()
        }
        
    }
}


#Preview {
    ContentView()
}
