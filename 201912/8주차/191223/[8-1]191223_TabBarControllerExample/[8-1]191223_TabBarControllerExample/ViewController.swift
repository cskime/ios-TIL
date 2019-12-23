//
//  ViewController.swift
//  [8-1]191223_TabBarControllerExample
//
//  Created by cskim on 2019/12/23.
//  Copyright © 2019 cskim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.barTintColor = .systemBlue
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after appearing the view.
        tabBarController?.tabBar.barTintColor = .systemRed
    }

}

