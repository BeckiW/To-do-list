//
//  SecondViewController.swift
//  To Do List
//
//  Created by Rebecca Wordsworth on 03/11/2016.
//  Copyright © 2016 Rebecca Wordsworth. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            items.append(itemTextField.text!)
            
            
        } else {
            
        items = [itemTextField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        textField.resignFirstResponder()
        
        return true
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

