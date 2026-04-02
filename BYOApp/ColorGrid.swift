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
      List(ThemeCombination.allCases, id: \.self, selection: $selectedTheme) { colorVal in
          
          CellView(colorCombination: colorVal, isCustom: $isCustom)
          
      }
      .accessibilityRespondsToUserInteraction(false)
      .listRowSpacing(CGFloat(8))
        HStack {
            Spacer()
            Button("Done") {
                print("Explore Templates")
            }
            .padding()
            .background(selectedTheme?.color.background)
            .foregroundColor(selectedTheme?.color.text)
            .cornerRadius(10)
            
            Spacer()
            
            Button("Custom") {
                isCustom.toggle()
            }
            .padding()
            .background(selectedTheme?.color.background)
            .foregroundColor(selectedTheme?.color.text)
            .cornerRadius(10)
            Spacer()
           
        }.frame(height: 80)
        
            .onChange(of: selectedTheme) { theme in
                print("Selected Theme: \(theme?.colorName ?? "None")")
            }
       
        .navigationBarTitle("Selet a theme")
    }
    
      
}

struct CellView: View {
    @State var colorCombination: ThemeCombination
    @Binding var isCustom: Bool
    @State private var message = "Tap the box"
    var body: some View {
        VStack(spacing: 8) {
            Text(isCustom ? "" : colorCombination.colorName)
                .frame(maxWidth: .infinity, maxHeight: isCustom ? 0 : .infinity, alignment: .leading)

            HStack(spacing: 50){
                Button("") {
                    print("Explore \(colorCombination.color.background)")
                }
                .padding()
                .background(colorCombination.color.background)
                .foregroundColor(.clear)
                .cornerRadius(10)
                .frame(width: 25, height: 25, alignment: .leading)
                .buttonStyle(BorderlessButtonStyle())
                .tag(5)
                .accessibilityRespondsToUserInteraction(true)
                .gesture(
                    TapGesture()
                        .onEnded {
                            message = "Tap detected"
                            print("Explore \(colorCombination.color.background)")
                        }
                )
               
                Button("") {
                    print("Explore \(colorCombination.color.text)")
                }
                .padding()
                .background(colorCombination.color.text)
                .foregroundColor(.clear)
                .cornerRadius(10)
                .frame(width: 25, height: 25, alignment: .leading)
                .buttonStyle(BorderlessButtonStyle())
                .tag(3)
                .gesture(
                    TapGesture()
                        .onEnded {
                            message = "Tap detected"
                            print("Explore \(colorCombination.color.text)")
                        }
                )
                
                Button("") {
                    print("Explore \(colorCombination.color.foreground)")
                }
                .padding()
                .background(colorCombination.color.foreground)
                .foregroundColor(.clear)
                .cornerRadius(10)
                .frame(width: 25, height: 25, alignment: .leading)
                .buttonStyle(PlainButtonStyle())
                .tag(4)
                .gesture(
                    TapGesture()
                        .onEnded {
                            message = "Tap detected"
                            print("Explore \(colorCombination.color.foreground)")
                        }
                )
               
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
        
    }
    
}
