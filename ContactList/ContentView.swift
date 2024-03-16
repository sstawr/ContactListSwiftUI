//
//  ContentView.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.03.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Label("Contacts", systemImage: "person.2")
                }
            SectionsView()
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

#Preview {
    ContentView()
}
