//
//  ColorGrid.swift
//  BYOApp
//
//  Created by Kanchan Verma on 22/09/25.
//

import SwiftUI

struct ColorGrid: View {
    @State var selectedTheme: ThemeCombination?
    @State private var isCustom: Bool
    
    init(selectedThemeGiven: ThemeCombination? = nil) {
        self.isCustom = false
        self.selectedTheme = selectedThemeGiven
    }
    
    var body: some View {
      List(ThemeCombination.allCases, id: \.self) { colorVal in
          
          CellView(colorCombination: colorVal, isCustom: $isCustom)
          
      }
      .listRowSpacing(CGFloat(8))
        HStack {
            Button("Done") {
                print("Explore Templates")
            }
            .padding()
            .background(selectedTheme?.color.background)
            .foregroundColor(selectedTheme?.color.text)
            .cornerRadius(10)
            
            
            Button("Custom") {
                isCustom.toggle()
            }
            .padding()
            .background(selectedTheme?.color.background)
            .foregroundColor(selectedTheme?.color.text)
            .cornerRadius(10)
           
        }.frame(height: 80)
       
        
        .navigationBarTitle("Selet a theme")
    }
    
      
}

struct CellView: View {
    @State var colorCombination: ThemeCombination
    @Binding var isCustom: Bool
    var body: some View {
        VStack {
            Text(isCustom ? "" : colorCombination.colorName)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

            HStack(spacing: 50){
                Button("") {
                    print("Explore \(colorCombination.colorName)")
                }
                .padding()
                .background(colorCombination.color.background)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(width: 25, height: 25, alignment: .leading)
               
                Button("") {
                    print("Explore \(colorCombination.colorName)")
                }
                .padding()
                .background(colorCombination.color.text)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(width: 25, height: 25, alignment: .leading)
                
                Button("") {
                    print("Explore \(colorCombination.colorName)")
                }
                .padding()
                .background(colorCombination.color.foreground)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(width: 25, height: 25, alignment: .leading)
               
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }.lineSpacing(CGFloat(5))
        
    }
    
}
