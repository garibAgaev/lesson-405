//
//  ContactInfo.swift
//  lesson 405
//
//  Created by Garib Agaev on 21.09.2023.
//

import SwiftUI

struct ContactInfo: View {
    let contact: Person
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "phone.circle")
                Text(contact.phoneNumber)
                Spacer()
            }
            Divider()
            HStack {
                Image(systemName: "envelope")
                Text(contact.email)
                Spacer()
            }
        }
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: Person.contact)
    }
}
