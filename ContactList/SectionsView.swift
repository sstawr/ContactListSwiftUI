//
//  SectionsView.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.03.24.
//

import SwiftUI

struct SectionsView: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(contactList) { contact in
                    Section(contact.fullName) {
                        Label(contact.phoneNumber, systemImage: "phone")
                        Label(contact.email, systemImage: "envelope")
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contacts")
        }
        
    }
}

#Preview {
    SectionsView(contactList: Person.getContactList())
}
