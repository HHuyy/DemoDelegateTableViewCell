//
//  TableViewController.swift
//  DemoDelegateTableViewCell
//
//  Created by Đừng xóa on 7/13/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit



class TableViewController: UITableViewController, TableViewCellDelegate {
    
    var name: [String] = ["mot", "hai" , "ba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.textField?.text = name[indexPath.row]
        cell.indexPath = indexPath
        cell.delegate = self
        return cell
    }
    func didChange(at indexPath: IndexPath, with content: String) {
        name[indexPath.row] = content
        print(name)
    }
}
