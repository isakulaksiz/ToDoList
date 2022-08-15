//
//  TaskViewController.swift
//  ToDoList
//
//  Created by Isa Kulaksız on 13.08.2022.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var tasks: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = tasks
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask(){
        //let newCount = count - 1
        //UserDefaults().setValue(newCount, forKey: "count")
        //UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
        
    }

}
