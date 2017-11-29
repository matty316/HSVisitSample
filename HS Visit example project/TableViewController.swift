//
//  TableViewController.swift
//  HS Visit example project
//
//  Created by Matthew Reed on 11/28/17.
//  Copyright © 2017 Matthew Reed. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let items = [
        Item(name: "Table View Controller", description: "Manages a UITableView, automatically creating an instance with the correct dimensions and resizing mask, and acting as the table view's delegate and data source.  The UITableViewController class also provides toggling of editing modes."),
        Item(name: "Button", description: "Implements a button that intercepts touch events and sends an action message to a target object when it's tapped. You can set the title, image, and other appearance properties of a button. In addition, you can specify a different appearance for each button state."),
        Item(name: "View Controller", description: "Provides view-management functionality for toolbars, navigation bars, and application views. The UIViewController class also supports modal views and rotating views when device orientation changes."),
        Item(name: "Label", description: "Implements a read-only text view. A label can contain an arbitrary amount of text, but UILabel may shrink, wrap, or truncate the text, depending on the size of the bounding rectangle and properties you set. You can control the font, text color, alignment, highlighting, and shadowing of the text in the label."),
        Item(name: "Navigation Controller", description: "Manages a stack of view controllers, each of which represents information about a view, such as its title and the navigation item associated with the view. When view controllers are pushed onto and popped off the stack, the navigation controller updates the navigation bar and view appropriately."),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "UI Elements"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if
            let detailsViewController = segue.destination as? DetailViewController,
            let cell = sender as? UITableViewCell,
            let indexPath = self.tableView.indexPath(for: cell) {
                let item = items[indexPath.row]
                detailsViewController.item = item
        }
    }
}
