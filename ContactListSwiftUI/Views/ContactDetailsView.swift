//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 3.10.22.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
        
        List {
            
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding()
                Spacer()
            }
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContactList().first!)
    }
}
