//
//  SimpleContactListView.swift
//  lesson 405
//
//  Created by Garib Agaev on 21.09.2023.
//

import SwiftUI

struct SimpleContactListView: View {
    let contactList: [Person]
    var body: some View {
        List(Person.contactList) { contact in
            NavigationLink {
                ContactInfoView(contact: contact)
            } label: {
                Text(contact.fullName)
            }
        }
        .navigationBarTitle("Contact List")
    }
}

struct SimpleContactListView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleContactListView(contactList: Person.contactList)
    }
}
