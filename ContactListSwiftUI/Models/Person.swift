//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 2.10.22.
//

struct Person: Identifiable {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    let id: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index],
                id: index
            )
            persons.append(person)
        }
        
        return persons
    }
}
