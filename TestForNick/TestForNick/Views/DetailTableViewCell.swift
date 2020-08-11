//
//  DetailTableViewCell.swift
//  TestForNick
//
//  Created by Polina on 04.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemCost: UILabel!
    
    func setupCell(with device: Device) {
        itemName.text = device.name
        itemImage.image = UIImage(named: device.image)
        itemCost.text = String(device.cost) + "₽"
    }
}
