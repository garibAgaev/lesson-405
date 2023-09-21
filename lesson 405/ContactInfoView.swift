//
//  ContactInfoView.swift
//  lesson 405
//
//  Created by Garib Agaev on 21.09.2023.
//

import SwiftUI

struct ContactInfoView: View {
    let contact: Person
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            ScrollView {
                ZStack {
                    Color(.white)
                    LazyVStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        Divider()
                        ContactInfo(contact: contact)
                    }
                }
                .cornerRadius(10)
                .padding()
            }
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person.contact)
    }
}
