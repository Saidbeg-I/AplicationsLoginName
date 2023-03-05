//
//  File.swift
//  AplicationsLoginName
//
//  Created by 1 on 20.02.2023.
//

struct User {
    let login: String
    let password : String
    let person: Person
    static func getUserData() -> User {
        User(login: "1",
             password: "2",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surName: String
    let age: String
    let countrie: String
    let photo: String
    let infoPerson: String
    
    var fullName: String {
        "\(name)" + "  " + "\(surName)"
        
    }
    static func getPerson() -> Person {
        Person(name: "Saidbeg",
               surName: "Imamagomedov",
               age: "27",
               countrie: "Russia",
               photo: "Saidbeg Imamagomedov",
               infoPerson: "Саидбег Имамагомедов, мне 27 лет , я родиля в России, я учусь в Swifbook , хочу стать высококвалифицырованным специалистом в своей области ,и я люблю все то чем я сейчас занимаюсь"
               )
    }
}


