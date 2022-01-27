//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/27/22.
//

import SwiftUI

struct SettingsRowView: View {
    
    var title: String
    var name: String? = nil
    
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        HStack () {
            Text(title).foregroundColor(.gray)
                .font(.title3)
            
            Spacer()
            
            if name != nil {
                Text(name!)
                    .font(.title2)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            }
            
        }.padding(.vertical, 5)
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Name", name: "Shahid Aaqeel")
                .previewLayout(.sizeThatFits)
                .padding()
            .preferredColorScheme(.dark)
            SettingsRowView(title: "Name", linkLabel: "Google", linkDestination: "google.lk")
                .previewLayout(.sizeThatFits)
                .padding()
                .preferredColorScheme(.light)
        }
    }
}
