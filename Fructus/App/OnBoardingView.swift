//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/26/22.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        TabView {
            ForEach (fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
