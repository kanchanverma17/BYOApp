//
//  ThemeCombination.swift
//  BYOApp
//
//  Created by Kanchan Verma on 22/09/25.
//

import SwiftUI

public enum ThemeCombination: CaseIterable {
    case taupeCombo
     case mistyCombo
     case mossyCombo
     case blueCombo
     case forrestCombo
     case dessertDuskCombo
     case lavendarCombo
     case hydrangeaCombo
     case peachCombo
     case lemonCombo
     case guavaCombo
    case revivalCombo 
    
    var color: ComboColor {
        switch self {
        case .taupeCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .blueCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .mistyCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .mossyCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .dessertDuskCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .forrestCombo:
            return ComboColor(background: Color(hex: 0x253D2C), text: Color(hex: 0xCFFFDC), foreground: Color(hex: 0x2E6F40))
        case .guavaCombo:
            return ComboColor(background: Color(hex: 0xCF5376), text: Color(hex: 0xFFB578), foreground: Color(hex: 0xFF8559))
        case .hydrangeaCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .lavendarCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .lemonCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .peachCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        case .revivalCombo:
            return ComboColor(background: Color(hex: 0x5C4E4E), text: Color(hex: 0xD1D0D0), foreground: Color(hex: 0x988686))
        }
    }
    var colorName: String {
        switch self {
        case .taupeCombo:
            return "Taupe Combo"
        case .blueCombo:
            return "Blue Combo"
        case .mistyCombo:
            return "Misty Combo"
        case .mossyCombo:
            return "Mossy Combo"
        case .dessertDuskCombo:
            return "Dusk Combo"
        case .forrestCombo:
            return "Forest Combo"
        case .guavaCombo:
            return "Gauva Combo"
        case .hydrangeaCombo:
            return "Hydrangea Combo"
        case .lavendarCombo:
            return "Lavendar Combo"
        case .lemonCombo:
            return "Lemon Combo"
        case .peachCombo:
            return "Peach Combo"
        case .revivalCombo:
            return "Revival Combo"
        }
    }
}

struct ComboColor {
    var background: Color
    var text: Color
    var foreground: Color
}

extension Color {
    init(rgbaHex: UInt) {
        self.init(
                    .sRGB,
                    red: Double((rgbaHex >> 24) & 0xff) / 255,
                    green: Double((rgbaHex >> 16) & 0xff) / 255,
                    blue: Double((rgbaHex >> 08) & 0xff) / 255,
                    opacity: Double((rgbaHex >> 00) & 0xff) / 255
                )
    }
    
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
