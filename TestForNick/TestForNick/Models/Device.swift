//
//  Model.swift
//  TestForNick
//
//  Created by Polina on 04.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import Foundation

struct Device {
    var name: String
    var cost: Int
    var image: String
    
    static  let deviceDic = [
        "iPhone SE" : 44990,
        "iPad Pro" : 100990,
        "Macbook Air" : 119990,
        "Air Pods" : 13990
    ]
    
    static  let deviceDic2 = [
        "iWatch 5" : 34490,
        "iMac" : 189990,
        "iPhone 11 Pro" : 106990,
    ]
    
    static  let deviceDic3 = [
        "MacBook Pro" : 233990,
        "Air Pods" : 13990
    ]
    
    static func getDevices(dic: [String: Int]) -> [Device] {
        var devices = [Device]()
        for (device, cost) in dic {
            devices.append(Device(name: device, cost: cost, image: device))
        }
        return devices
    }
    
    static func getSum(dic: [String: Int]) -> Int {
        var sum = Int()
        for cost in dic.values {
            sum += cost
        }
        return sum
    }
}
