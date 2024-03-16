//
//  ContentView.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.03.24.
//

import SwiftUI

struct ContentView: View {
    
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ListView(contactList: contactList)
                .tabItem {
                    Label("Contacts", systemImage: "person.2")
                }
            SectionsView(contactList: contactList)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

#Preview {
    ContentView()
}
