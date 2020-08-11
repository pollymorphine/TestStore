//
//  OrderTableViewCell.swift
//  TestForNick
//
//  Created by Polina on 07.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var numbOfOrder: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var sum: UILabel!
    
    func setupCell(with order: Order) {
        numbOfOrder.text = "#" + String(order.numbOfOrder)
        status.text = order.status
        sum.text = String(order.sum) + "₽"
        date.text = order.date
    }
}
