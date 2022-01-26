//
//  FruitRowView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/26/22.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        HStack (spacing: 10) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(8)
            
            VStack (alignment: .leading, spacing: 4) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.light)
                    
                
                Text(fruit.headline)
                    .font(.caption)
                    .fontWeight(.light)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
