//
//  User.swift
//  TestForNick
//
//  Created by Polina on 07.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import Foundation

struct User {
    var name: String
    var phoneNumber: Int
    var adree: String
    
    static let user = User(name: "Евгений", phoneNumber: 89061234567, adree: "Москва, 3-я улица Строителей, 25, кв. 12")
    static let user1 = User(name: "Александр", phoneNumber: 89106778643, adree: "Москва, ул. Новокузнецкая, д. 13/15")
    static let user2 = User(name: "Екатерина", phoneNumber: 89260983357, adree: "Москва, ул. Мосфильмовская, д. 11, кв. 320")
}
