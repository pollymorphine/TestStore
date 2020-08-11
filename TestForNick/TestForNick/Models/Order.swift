//
//  Order.swift
//  TestForNick
//
//  Created by Polina on 08.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import Foundation

struct Order {
    
    var numbOfOrder: Int
    var date: String
    var sum: Int
    var status: String
    var devices: [Device]
    var user: User
    
   static let array = [order1, order2, order3]
}

let order1 = Order(numbOfOrder: 123456,
                   date: "1.08.20",
                   sum: Device.getSum(dic: Device.deviceDic),
                   status: "Доставлен",
                   devices: Device.getDevices(dic: Device.deviceDic),
                   user: User.user)

let order2 = Order(numbOfOrder: 123457,
                   date: "7.08.20",
                   sum: Device.getSum(dic: Device.deviceDic3),
                   status: "В пути",
                   devices: Device.getDevices(dic: Device.deviceDic3),
                   user: User.user1)

let order3 = Order(numbOfOrder: 123458,
                   date: "4.08.20",
                   sum: Device.getSum(dic: Device.deviceDic2),
                   status: "Доставлен",
                   devices: Device.getDevices(dic: Device.deviceDic2),
                   user: User.user2)





