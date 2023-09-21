//
//  ContentView.swift
//  lesson 405
//
//  Created by Garib Agaev on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    let contactList = Person.contactList
    var body: some View {
        TabView {
            NavigationStack {
                SimpleContactListView(contactList: contactList)
            }
            .tabItem {
                Image(systemName: "person.2")
                Text("Contacts")
            }
            NavigationStack {
                ContactListView(contactList: contactList)
            }
            .tabItem {
                Image(systemName: "phone")
                Text("Numbers")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
