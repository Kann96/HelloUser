//
//  UserInfo.swift
//  HelloUser
//
//  Created by Анастасия Кучер on 18.02.2025.
//

struct User {
    let user: String
    let passwordUser: String
    let person: Person
    
    static func getUser() -> User {
        User(
            user: "User",
            passwordUser: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let old: String
    let company: String
    let bio: String
    
static func getPerson() -> Person {
    Person(
        name: "Kanna",
        old: "28",
        company: "Apple",
        bio: "Миллионер. Плейбой. Филантроп."
        )
    }
}
