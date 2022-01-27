//
//  SettingsView.swift
//  Fructus
//
//  Created by Shahid Aaqeel on 1/27/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = false
    
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
                    
                    GroupBox (label: SettingsLabelView(title: "Cutomization", image: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggling the below button. It'll start the application from the Onboarding screen")
                            .font(.footnote)
                            .layoutPriority(1)
                            .frame(minHeight: 80 )
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                                    .fontWeight(.semibold )
                                    
                                    
                            } else {
                                Text("Restart".uppercased())
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .cornerRadius(10)
                    }
                    
                    GroupBox(label: SettingsLabelView(title: "Application", image: "apps.iphone")) {
                        
                        Divider().padding(.vertical, 4)
                        
                        SettingsRowView(title: "Name", name: "Shahid Aaqeel")
                        SettingsRowView(title: "Designation", name: "Mobile Developer")
                        SettingsRowView(title: "Nationality", name: "Sri Lankan")
                        SettingsRowView(title: "Portfolio", linkLabel: "Own", linkDestination: "google.com")
                        SettingsRowView(title: "Github", linkLabel: "Github", linkDestination: "github.com")
                        SettingsRowView(title: "Current Employee", name: "Dialog Axiata")
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
