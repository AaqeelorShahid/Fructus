//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/26/22.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach (0..<5) { item in
                FruitCardView()
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
