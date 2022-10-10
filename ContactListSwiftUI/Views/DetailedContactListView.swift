//
//  DetailedContactListView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 3.10.22.
//

import SwiftUI

struct DetailedContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray" )
                }
                .textCase(.none)
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct DetailedContactListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactListView(contacts: Person.getContactList())
    }
}
