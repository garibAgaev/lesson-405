//
//  ContactListView.swift
//  lesson 405
//
//  Created by Garib Agaev on 21.09.2023.
//

import SwiftUI

import SwiftUI

struct ContactListView: View {
    let contactList: [Person]
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            ScrollView {
                LazyVStack(pinnedViews: .sectionHeaders) {
                    ForEach(contactList) { contact in
                        Section {
                            ZStack {
                                Color(.white)
                                HStack {
                                    Spacer(minLength: 36)
                                    ContactInfo(contact: contact)
                                }
                            }
                            .cornerRadius(10)
                        } header: {
                            HStack {
                                Text(contact.fullName)
                                    .foregroundColor(.gray)
                                    .bold()
                                Spacer()
                            }
                            .background(Color(.secondarySystemBackground))
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Contact List")
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Person.contactList)
    }
}
