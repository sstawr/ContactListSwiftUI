//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.03.24.
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .frame(alignment: .center)
                    .padding()
                
                Spacer()
            }

            Label(contact.phoneNumber, systemImage: "phone")
            Label(contact.email, systemImage: "envelope")
                .navigationTitle(contact.fullName)
        }
    }
}

#Preview {
    ContactDetailView(contact: Person.getContactList().first ?? Person(id: UUID(), name: "Test name", surname: "Test Surname", email: "test@email.com", phoneNumber: "123 123"))
}
