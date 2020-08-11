//
//  ViewController.swift
//  TestForNick
//
//  Created by Polina on 04.08.2020.
//  Copyright © 2020 SergeevaPolina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToOrderVC(_ sender: Any) {
        performSegue(withIdentifier: Name.orderIdentifier, sender: nil)
    }
}

