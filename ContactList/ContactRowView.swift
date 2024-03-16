//
//  ContactRowView.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.03.24.
//

import SwiftUI

struct ContactRowView: View {
    
    let contact: Person
    
    var body: some View {
        NavigationLink {
            ContactDetailView(contact: contact)
        } label: {
            HStack {
                Text("\(contact.fullName)")
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContactRowView(contact: Person.getContactList().first ?? Person(id: UUID(), name: "Test name", surname: "Test Surname", email: "test@email.com", phoneNumber: "123 123"))
}
