//
//  EntryViewController.swift
//  ToDoList
//
//  Created by Isa Kulaksız on 13.08.2022.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    
    var update: (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        
        return true
    }
    
    @objc func saveTask(){
        
        guard let text = textField.text, !text.isEmpty else {
            return
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        let newCount = count + 1
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task\(newCount)")
        
        update?()
        
        navigationController?.popViewController(animated: true)
    }
    

}
