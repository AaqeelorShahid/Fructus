//
//  ContentView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/25/22.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        NavigationView{
            List {
                ForEach (fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits List")
        }
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
