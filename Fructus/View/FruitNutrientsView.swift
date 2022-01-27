//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/27/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    var nutrients: [String] = [
        "Engery", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"
    ]
    
    var body: some View {
        
        GroupBox () {
            DisclosureGroup ("Nutrients value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }.foregroundColor(fruit.gradientColors[0])
                            .font(.body.bold())
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }
        
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
