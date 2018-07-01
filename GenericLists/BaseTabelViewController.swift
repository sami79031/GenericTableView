//
//  ViewController.swift
//  GenericLists
//
//  Created by Sami Ali on 7/1/18.
//  Copyright © 2018 Sami Ali. All rights reserved.
//

import UIKit

class BaseTabelViewController<T: BaseCell<U>, U>: UITableViewController {
    var cellId = "cellId"
    var items = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(T.self, forCellReuseIdentifier: cellId)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BaseCell<U>
        cell.item = items[indexPath.row]
        return cell
    }

}

