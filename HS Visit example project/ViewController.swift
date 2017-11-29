//
//  ViewController.swift
//  HS Visit example project
//
//  Created by Matthew Reed on 11/28/17.
//  Copyright © 2017 Matthew Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "IBActions", message: "IBActions allow you to run code when a user taps a button", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

