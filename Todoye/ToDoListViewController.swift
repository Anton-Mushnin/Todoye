//
//  ViewController.swift
//  Todoye
//
//  Created by Антон Мушнин on 17/03/2018.
//  Copyright © 2018 Антон Мушнин. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demogorgon"]

  override  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let cell = tableView.cellForRow(at: indexPath)!
 
    // print(cell.textLabel?.text!)
    
    if cell.accessoryType == .none{
            cell.accessoryType = .checkmark
        } else{
            cell.accessoryType = .none
        }
        tableView.deselectRow(at: indexPath, animated: true)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    





}

