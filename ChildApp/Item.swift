//
//  Item.swift
//  ChildApp
//
//  Created by Kanchan Verma on 24/08/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
