//
//  SettingsView.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0").navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
