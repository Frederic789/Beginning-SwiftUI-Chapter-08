// Modified today 
//  ContentView.swift
//  Chapter08
//
//  Created by Mike Panitz on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PickerIntroView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Basic Pickers")
                }
            PickAColorView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Color Picker")
                }
            PickADateView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Date Picker")
                }
            PickARestrictedDateView()
                .tabItem {
                    Image(systemName: "4.circle")
                    Text("Restricted Date Picker")
                }
            
            PickerDemoView()
                .tabItem{
                    Image(systemName: "5.circle")
                    Text("Options")
                }
            
            SettingsView()
                .tabItem{
                    Image(systemName: "6.circle")
                    Text("Settings")
                    
                }
        }
        
       
        
       
        .padding()
    }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}


