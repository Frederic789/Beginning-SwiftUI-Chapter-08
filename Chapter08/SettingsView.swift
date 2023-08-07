//
//  SettingsView.swift
//  Chapter08
//
//  Created by Student Account on 8/5/23.
//

import SwiftUI

struct SettingsView: View {
    
   
    struct SettingsViewState {
        var selectedMode: String = "Free Mode"
    }
    
    
    @State var settingsState = SettingsViewState()
    var body: some View {
        
        Picker("App Mode", selection: $settingsState.selectedMode) {
                    Text("Free mode").tag("Free mode")
                    Text("Trial mode").tag("Trial mode")
                    Text("Professional mode").tag("Professional mode")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .onChange(of: settingsState.selectedMode) { newMode in
                    // Handle mode change here (e.g., update app behavior based on selected mode)
                }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
