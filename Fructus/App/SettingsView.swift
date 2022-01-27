//
//  SettingsView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/27/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    GroupBox (label:
                                HStack {
                        Text("Fructus".uppercased())
                        Spacer()
                        Image(systemName: "info.circle")
                    }) {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Image ("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            
                            Text (" Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium.")
                                .multilineTextAlignment(.center)
                                .font(.footnote)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
