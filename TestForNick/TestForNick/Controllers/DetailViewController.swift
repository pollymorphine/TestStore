//
//  DetailViewController.swift
//  TestForNick
//
//  Created by Polina on 04.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoneNumber: UILabel!
    @IBOutlet weak var userAdress: UILabel!
    @IBOutlet weak var orderStatus: UILabel!
    @IBOutlet weak var costSum: UILabel!
    
    var titleName: String?
    var status: String?
    var sum: Int?
    var usersName: String?
    var usersPhone: Int?
    var usersAdress: String?
    var devices: [Device]?
    var user: User?
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = titleName
        tableView.tableFooterView = UIView()
        setupViews()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let devices = devices else { return [Device]().count }
        return devices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Name.detailCellIdentifier, for: indexPath) as? DetailTableViewCell
            else { return UITableViewCell() }
        
        if let device = devices?[indexPath.row] {
            cell.setupCell(with: device)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func setupViews() {
        costSum.text = String(sum!) + "₽"
        userName.text = usersName
        userAdress.text = usersAdress
        userPhoneNumber.text = String(usersPhone!)
        orderStatus.text = status
    }
}

