//
//  StartButton.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/26/22.
//

import SwiftUI

struct StartButton: View {
    var body: some View {
        Button(action: {
            print("Check")
        }) {
            HStack (spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.2)
            )
        }
        .accentColor(Color.white)
        
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
