//
//  ListView.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.03.24.
//

import SwiftUI

struct ListView: View {
    
    let contactList: [Person]
    
    var body: some View {
         NavigationStack {
            List(contactList) { contact in
                ContactRowView(contact: contact)
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
         }
    }
}

#Preview {
    ListView(contactList: Person.getContactList())
}
