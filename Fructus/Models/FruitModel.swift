//
//  FruitModel.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/26/22.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
