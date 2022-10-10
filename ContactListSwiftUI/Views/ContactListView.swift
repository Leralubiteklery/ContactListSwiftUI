//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 3.10.22.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        
        NavigationStack {
            List(contacts) { person in
                NavigationLink(
                    person.fullName,
                    destination: ContactDetailsView(person: person)
                    )
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }

    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
