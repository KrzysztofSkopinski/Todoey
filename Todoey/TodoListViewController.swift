//
//  ViewController.swift
//  Todoey
//
//  Created by Krzysztof Skopiński on 02/03/2019.
//  Copyright © 2019 Krzysztof Skopiński. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["kup coś", "zjedz coś", "wypij coś"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
       cell.textLabel?.text = itemArray[indexPath.row]
        
        
        return cell
    }
    
    //MARK TableView Delegate Methods
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
    
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            } else {
                 tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            }
        
    
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
