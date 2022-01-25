//
//  FruitCardView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/26/22.
//

import SwiftUI

//MARK: - PROPERTIES


//MARK: - BODY

struct FruitCardView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                //IMAGE
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color (red: 0, green: 0, blue: 0), radius: 15, x: 6, y: 0)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //TITLE
                
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .red, radius: 10, x: 8, y: 6)
                
                //HEADLINE
                Text("Blueberries are blue that why its called blueberry. If it's red then it must be called red berry. ")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON
                
                StartButton()
            }
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom), alignment: .center)
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
