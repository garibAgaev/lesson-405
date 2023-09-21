//
//  Person.swift
//  lesson 405
//
//  Created by Garib Agaev on 21.09.2023.
//

import Foundation

func getRandomNumberOf(lenght: Int) -> String {
    let number = String(format: "%.\(lenght)f", Float.random(in: 0..<1))
    return String(number[number.index(number.startIndex, offsetBy: 2)...])
}

struct Person: Identifiable {
    static var contactList: [Person] {
        zip(firstNames.shuffled(), secondNames.shuffled()).map {
            Person(firstName: $0, secondName: $1)
        }
    }
    
    static var contact: Person {
        Person(firstName: firstNames.shuffled()[0], secondName: secondNames.shuffled()[0])
    }
    
    static var it = 0
    var id: Int
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    private static let firstNames = ["Егор", "Евгений", "Адам", "Сергей", "Максим", "Алексей"]
    private static let secondNames = ["Иванов", "Потапов", "Попов", "Морозов"]
    
    init(firstName: String, secondName: String) {
        id = Person.it
        Person.it += 1
        self.firstName = firstName
        self.secondName = secondName
        email = "\(firstName)_\(secondName)@mail.ru"
        phoneNumber = "8 (999) \(getRandomNumberOf(lenght: 3))-\(getRandomNumberOf(lenght: 2))-\(getRandomNumberOf(lenght: 2))"
    }
}
