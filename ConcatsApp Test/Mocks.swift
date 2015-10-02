//
//  Mocks.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct MockContact: Contact {
    let firstName: String
    let lastName: String
    let phonenumber: String
}

class MockContactRepository: ContactRepositoryProtocol {
    var contacts: [Contact] = []
    func add(contact: Contact) -> Contact { contacts.append(contact); return contact }
    func getAll() -> Result<[Contact]> { return Result(value: contacts) }
    func get(index: Int) -> Result<Contact> { return Result(value: contacts[index]) }
}