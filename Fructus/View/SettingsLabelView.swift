//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/27/22.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var title: String
    var image: String
    
    var body: some View {
        GroupBox (label:
                    HStack {
            Text(title.uppercased())
            Spacer()
            Image(systemName: image)
        }) {
            HStack {
                Text("Something Something")
            }
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(title: "Fructus", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
