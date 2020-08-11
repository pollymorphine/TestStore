//
//  OrderViewController.swift
//  TestForNick
//
//  Created by Polina on 07.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var stackView: UIStackView!
    
    private let orders = Order.array
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Name.orderCellIdentifier, for: indexPath) as? OrderTableViewCell
            else { return UITableViewCell() }
        
        cell.setupCell(with: orders[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let vc = UIStoryboard(name: Name.main, bundle: nil).instantiateViewController(withIdentifier: Name.detailIdentifier) as? DetailViewController {
            
            vc.titleName = Text.detailOfOrder + "#" + String(orders[indexPath.row].numbOfOrder)
            vc.status = orders[indexPath.row].status
            vc.devices = orders[indexPath.row].devices
            vc.sum = orders[indexPath.row].sum
            vc.usersAdress = orders[indexPath.row].user.adree
            vc.usersName = orders[indexPath.row].user.name
            vc.usersPhone = orders[indexPath.row].user.phoneNumber
            self.show(vc, sender: self)
        }
    }
}
