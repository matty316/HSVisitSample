//
//  DetailViewController.swift
//  HS Visit example project
//
//  Created by Matthew Reed on 11/29/17.
//  Copyright © 2017 Matthew Reed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var descriptionLabel: UILabel!
    var item: Item?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = item?.name
        self.descriptionLabel.text = item?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
