//
//  ContentView.swift
//  BYOApp
//
//  Created by Aman Maurya on 18/08/25.
//

import SwiftUI

enum NavigationDestinations: Hashable {
       case detail(item: String)
       case settings
   }



struct ContentView: View {
    @State  var path = NavigationPath()
        var body: some View {
            NavigationStack(path: $path){
            VStack {
                Button("Custom Button") {
                    print("Explore Templates")
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                Button {
                    path.append("NewView")
                                } label: {
                                    Text("Pick a theme")
                                }
                   
                
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
            }
            .padding()
            .navigationDestination(for: String.self) { view in
                           if view == "NewView" {
                               ColorGrid(selectedThemeGiven: ThemeCombination.taupeCombo)
                           }
                       }
        }
    }
}

#Preview {
    ContentView()
}
